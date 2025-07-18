#include "hls_stream.h"
#include "weights.h"
#include <cstdint>
#include <cstdio>
#define Q_SCALE 12

// ConvLayer Class with Reduced Optimizations
template <int MAX_IN_C, int MAX_H, int MAX_W, int MAX_OUT_C, int MAX_OUT_H, int MAX_OUT_W, int MAX_PAD, int IC_UNROLL=1, int PIPE_J_II=30>
class ConvLayer {
public:
    int height, width, in_channels, out_channels, kernel_size, stride, padding;
    int output_height, output_width;
    int16_t *weights;
    int16_t *bias;

    ConvLayer(int h, int w, int ic, int oc, int ks, int s, int p, int16_t *wt, int16_t *b)
        : height(h), width(w), in_channels(ic), out_channels(oc), kernel_size(ks), 
          stride(s), padding(p), weights(wt), bias(b) {
        output_height = (height + 2 * padding - kernel_size) / stride + 1;
        output_width = (width + 2 * padding - kernel_size) / stride + 1;
    }

    void load_params_func(int16_t local_weights[MAX_OUT_C][MAX_IN_C][3][3], int16_t local_bias[MAX_OUT_C]) {
        #pragma HLS inline off
        // Load weights
        for (int oc = 0; oc < out_channels; oc++) {
            #pragma HLS LOOP_TRIPCOUNT min=32 max=32
            for (int ic = 0; ic < in_channels; ic++) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=32
                for (int m = 0; m < 3; m++) {
                    for (int n = 0; n < 3; n++) {
                        #pragma HLS PIPELINE II=4
                        int weight_idx = oc * in_channels * 9 + ic * 9 + m * 3 + n;
                        local_weights[oc][ic][m][n] = weights[weight_idx];
                    }
                }
            }
        }
        // Load bias
        for (int oc = 0; oc < out_channels; oc++) {
            #pragma HLS PIPELINE II=4
            local_bias[oc] = bias[oc];
        }
    }

    void prepare_input_buf_func(hls::stream<int16_t> &input_stream, int16_t input_buf[MAX_IN_C][MAX_H + 2 * MAX_PAD][MAX_W + 2 * MAX_PAD]) {
        #pragma HLS inline off
        // Initialize to 0
        for (int ic = 0; ic < in_channels; ic++) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=32
            for (int i = 0; i < MAX_H + 2 * MAX_PAD; i++) {
                for (int j = 0; j < MAX_W + 2 * MAX_PAD; j++) {
                    #pragma HLS PIPELINE II=4
                    input_buf[ic][i][j] = 0;
                }
            }
        }
        // Read input stream
        for (int i = 0; i < height; i++) {
            #pragma HLS LOOP_TRIPCOUNT min=16 max=16
            for (int j = 0; j < width; j++) {
                for (int ic = 0; ic < in_channels; ic++) {
                    #pragma HLS PIPELINE II=4
                    input_buf[ic][i + padding][j + padding] = input_stream.read();
                }
            }
        }
    }

    void convolution_func(int16_t input_buf[MAX_IN_C][MAX_H + 2 * MAX_PAD][MAX_W + 2 * MAX_PAD], 
                          int16_t local_weights[MAX_OUT_C][MAX_IN_C][3][3], 
                          int16_t local_bias[MAX_OUT_C],
                          int16_t output_buf[MAX_OUT_C][MAX_OUT_H][MAX_OUT_W]) {
        #pragma HLS inline off
        #pragma HLS bind_op op=mul impl=fabric latency=0
        #pragma HLS bind_op op=add impl=fabric latency=0
        for (int oc = 0; oc < out_channels; oc++) {
            #pragma HLS LOOP_TRIPCOUNT min=32 max=32
            for (int i = 0; i < output_height; i++) {
                #pragma HLS LOOP_TRIPCOUNT min=8 max=16
                for (int j = 0; j < output_width; j++) {
                    // #pragma HLS PIPELINE II=PIPE_J_II
                    int32_t sum = local_bias[oc] << Q_SCALE;
                    for (int ic = 0; ic < in_channels; ic++) {
                        #pragma HLS LOOP_TRIPCOUNT min=1 max=32
                        for (int m = 0; m < 3; m++) {
                            for (int n = 0; n < 3; n++) {
                                int x = i * stride + m;
                                int y = j * stride + n;
                                sum += input_buf[ic][x][y] * local_weights[oc][ic][m][n];
                            }
                        }
                    }
                    int16_t result = sum >> Q_SCALE;
                    output_buf[oc][i][j] = (result > 0) ? result : 0; // ReLU
                }
            }
        }
    }

    void write_output_func(int16_t output_buf[MAX_OUT_C][MAX_OUT_H][MAX_OUT_W], hls::stream<int16_t> &output_stream) {
        #pragma HLS inline off
        for (int i = 0; i < output_height; i++) {
            #pragma HLS LOOP_TRIPCOUNT min=8 max=16
            for (int j = 0; j < output_width; j++) {
                for (int oc = 0; oc < out_channels; oc++) {
                    #pragma HLS PIPELINE II=4
                    output_stream.write(output_buf[oc][i][j]);
                }
            }
        }
    }

    void compute(hls::stream<int16_t> &input_stream, hls::stream<int16_t> &output_stream) {
        int16_t input_buf[MAX_IN_C][MAX_H + 2 * MAX_PAD][MAX_W + 2 * MAX_PAD];
        int16_t output_buf[MAX_OUT_C][MAX_OUT_H][MAX_OUT_W];

        int16_t local_weights[MAX_OUT_C][MAX_IN_C][3][3];
        int16_t local_bias[MAX_OUT_C];

        load_params_func(local_weights, local_bias);
        prepare_input_buf_func(input_stream, input_buf);
        convolution_func(input_buf, local_weights, local_bias, output_buf);
        write_output_func(output_buf, output_stream);
    }
};

// MaxPool Class with Reduced Optimizations
template <int MAX_C, int MAX_H, int MAX_W>
class MaxPool {
public:
    int height, width, channels, pool_size, stride;
    int output_height, output_width;

    MaxPool(int h, int w, int c, int ps, int s)
        : height(h), width(w), channels(c), pool_size(ps), stride(s) {
        output_height = (height - pool_size) / stride + 1;
        output_width = (width - pool_size) / stride + 1;
    }

    void read_input_func(hls::stream<int16_t> &input_stream, int16_t input_buf[MAX_C][MAX_H][MAX_W]) {
        #pragma HLS inline off
        for (int i = 0; i < height; i++) {
            #pragma HLS LOOP_TRIPCOUNT min=8 max=16
            for (int j = 0; j < width; j++) {
                for (int c = 0; c < channels; c++) {
                    #pragma HLS PIPELINE II=4
                    input_buf[c][i][j] = input_stream.read();
                }
            }
        }
    }
    void pooling_func(int16_t input_buf[MAX_C][MAX_H][MAX_W], hls::stream<int16_t> &output_stream) {
        #pragma HLS inline off
        for (int i = 0; i < output_height; i++) {
            #pragma HLS LOOP_TRIPCOUNT min=4 max=8
            for (int j = 0; j < output_width; j++) {
                for (int c = 0; c < channels; c++) {
                    #pragma HLS PIPELINE II=4
                    int16_t max_val = input_buf[c][i * stride][j * stride];
                    for (int m = 0; m < pool_size; m++) {
                        for (int n = 0; n < pool_size; n++) {
                            int16_t val = input_buf[c][i * stride + m][j * stride + n];
                            if (val > max_val) max_val = val;
                        }
                    }
                    output_stream.write(max_val);
                }
            }
        }
    }

    void compute(hls::stream<int16_t> &input_stream, hls::stream<int16_t> &output_stream) {
        int16_t input_buf[MAX_C][MAX_H][MAX_W];

        read_input_func(input_stream, input_buf);
        pooling_func(input_buf, output_stream);
    }
};

// Functions for top-level read/write with Reduced Optimizations
void read_input_top(int16_t *input, hls::stream<int16_t> &input_s) {
    #pragma HLS inline off
    for (int i = 0; i < 16 * 16 * 1; i++) {
        #pragma HLS PIPELINE II=4
        input_s.write(input[i]);
    }
}

void write_output_top(hls::stream<int16_t> &output_s, int16_t *output) {
    #pragma HLS inline off
    for (int i = 0; i < 4 * 4 * 32; i++) {
        #pragma HLS PIPELINE II=4
        output[i] = output_s.read();
    }
    //  for (int i = 0; i < 16 * 16 * 1; i++) {
    //     #pragma HLS PIPELINE II=4
    //     output[i] = output_s.read();
    // }
}

// Top-level CNN function without Dataflow
void cnn_top(int16_t *input, int16_t *output,
             int16_t conv1_weights[32][1][3][3], int16_t conv1_bias[32],
             int16_t conv2_weights[32][32][3][3], int16_t conv2_bias[32],
             int16_t conv3_weights[32][32][3][3], int16_t conv3_bias[32]
            ) {
    #pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem0 depth=256 
    #pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem1 depth=512 
    #pragma HLS INTERFACE m_axi port=conv1_weights offset=slave bundle=gmem2
    #pragma HLS INTERFACE m_axi port=conv1_bias offset=slave bundle=gmem3
    #pragma HLS INTERFACE m_axi port=conv2_weights offset=slave bundle=gmem4
    #pragma HLS INTERFACE m_axi port=conv2_bias offset=slave bundle=gmem5
    #pragma HLS INTERFACE m_axi port=conv3_weights offset=slave bundle=gmem6
    #pragma HLS INTERFACE m_axi port=conv3_bias offset=slave bundle=gmem7
    #pragma HLS INTERFACE s_axilite port=return
    output[0] = 1; 

    hls::stream<int16_t> input_s;
    #pragma HLS STREAM variable=input_s depth=256
    hls::stream<int16_t> conv1_out;
    #pragma HLS STREAM variable=conv1_out depth=8192
    hls::stream<int16_t> conv2_out;
    #pragma HLS STREAM variable=conv2_out depth=8192
    hls::stream<int16_t> pool1_out;
    #pragma HLS STREAM variable=pool1_out depth=2048
    hls::stream<int16_t> conv3_out;
    #pragma HLS STREAM variable=conv3_out depth=2048
    hls::stream<int16_t> output_s;
    #pragma HLS STREAM variable=output_s depth=512
    #pragma HLS DATAFLOW
    output[0] = 2; 
    read_input_top(input, input_s);
    output[0] = 3; 
    ConvLayer<1, 16, 16, 32, 16, 16, 1, 1, 4> conv1(16, 16, 1, 32, 3, 1, 1, (int16_t*)conv1_weights, conv1_bias);
    conv1.compute(input_s, conv1_out);
    output[0] = 4; 
    ConvLayer<32, 16, 16, 32, 16, 16, 1, 1, 4> conv2(16, 16, 32, 32, 3, 1, 1, (int16_t*)conv2_weights, conv2_bias);
    conv2.compute(conv1_out, conv2_out);
    output[0] = 5; 
    MaxPool<32, 16, 16> pool1(16, 16, 32, 2, 2);
    pool1.compute(conv2_out, pool1_out);
    output[0] = 6; 
    ConvLayer<32, 8, 8, 32, 8, 8, 1, 1, 4> conv3(8, 8, 32, 32, 3, 1, 1, (int16_t*)conv3_weights, conv3_bias);
    conv3.compute(pool1_out, conv3_out);
    output[0] = 7;  
    MaxPool<32, 8, 8> pool2(8, 8, 32, 2, 2);
    pool2.compute(conv3_out, output_s);
    
    output[0] = 8; 
    write_output_top(output_s, output);
}