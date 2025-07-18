#include <cstdint>
#include <cstdio>
#include <iostream>
#include "hls_stream.h"
#include "cnn_layer.h"  
#include "weights.h"
    // ... existing code ...
#include <numeric>   // for std::accumulate
#include <cmath>     // for std::sqrt

#define HEIGHT 16
#define WIDTH 16
#define IN_CHANNELS 1
#define OUT_CHANNELS 5
#define KERNEL_SIZE 3
#define POOL_SIZE 2
#define Q_SCALE 12

#define INIT_VALUE 1

void drain_stream(hls::stream<int16_t>& stream, const char* name) {
    int count = 0;
    while (!stream.empty()) {
        stream.read();
        count++;
    }
    if (count > 0) {
        printf("警告: 从 %s 清空了 %d 个元素\n", name, count);
    }
};


class FC {
public:
    int input_size, output_size;
    int16_t *weights;
    int16_t *bias;

    FC(int is, int os, int16_t *w, int16_t *b)
        : input_size(is), output_size(os), weights(w), bias(b) {}

    void compute(int16_t* input_buf, int16_t* output_stream, bool is_relu) {


        // Fully connected computation
        for (int oc = 0; oc < output_size; oc++) {
            int32_t sum = 0;
            for (int ic = 0; ic < input_size; ic++) {
                sum += input_buf[ic] * weights[oc * input_size + ic];
            }
            sum += bias[oc] << Q_SCALE;
            int32_t scaled_result = sum >> Q_SCALE;

            // 饱和转换到 int16_t
            if (scaled_result > INT16_MAX) {
                scaled_result = INT16_MAX;
            } else if (scaled_result < INT16_MIN) {
                scaled_result = INT16_MIN;
            }

            int16_t result = (int16_t)scaled_result;
            // int16_t result = sum + bias[oc];
            // output_stream[oc] = result; // No ReLU by default, can be added if needed
            output_stream[oc] = is_relu ? (result > 0 ? result : 0) : result;
        }
    }
};



int main() {
    int16_t input_array[HEIGHT * WIDTH * IN_CHANNELS];
    int16_t output_array[4 * 4 * 32];
    int16_t test_input[HEIGHT][WIDTH][IN_CHANNELS];


for (int i = 0; i < HEIGHT; ++i) {
    for (int j = 0; j < WIDTH; ++j) {
        for (int c = 0; c < IN_CHANNELS; ++c) {
            test_input[i][j][c] = 1;
        }
    }
}
    // 加载输入
    for (int idx = 0; idx < HEIGHT * WIDTH * IN_CHANNELS; idx++) {
        input_array[idx] = 4096;
    }

    // 调用顶层函数
    cnn_top(input_array, output_array, features_0_weight, features_0_bias, features_2_weight, features_2_bias, features_6_weight, features_6_bias);
    // cnn_top(input_array, output_array);

    // 检查输出
    int errors = 0;
    int output_size = 512;
    int16_t outputbf[32][4][4];

    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            for (int k = 0; k < 32; k++) {
                outputbf[k][i][j] = output_array[(i * 4 + j) * 32 + k];
            }
        }
    }

    FC fc1(512, 512, (int16_t*)linear_1_weight, linear_1_bias);
    FC fc2(512, 5, (int16_t*)linear_3_weight, linear_3_bias);

    int16_t fc1_input[512], fc1_output[512], fc2_output[5] ;

    for (int i = 0; i < 32; i++) {
        for (int j = 0; j < 4; j++) {
            for (int k = 0; k < 4; k++) {
                fc1_input[i * 4 * 4 + j * 4 + k] = outputbf[i][j][k];
            }
        }
    }


    fc1.compute(fc1_input, fc1_output, true);
    fc2.compute(fc1_output, fc2_output, false);


    
    float result[5];
    for (int i = 0; i < 5; i++) {
        result[i] = (float)fc2_output[i]/4096;
    }

    for (int i = 0; i < 5; i++) {
        std::cout << "Output[" << i << "] = " << result[i] << std::endl;
    }
    // int errorsq = 0;
    // for (int idx = 0; idx < HEIGHT * WIDTH * IN_CHANNELS; idx++) {
        
    //     if (input_array[idx] != output_array[idx]) {
    //     printf("out %d : %d", idx, output_array[idx]);
    //     errorsq ++;
    //     }
    // }   


    

    return 0;
}