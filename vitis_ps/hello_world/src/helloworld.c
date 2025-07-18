#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <xil_types.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "platform.h"
#include "xil_printf.h"
#include "xcnn_top.h"
#include "math.h"

// Define sizes based on the HLS code and test.cpp
#define HEIGHT 16
#define WIDTH 16
#define IN_CHANNELS 1
#define OUT_CHANNELS 32  // Final output channels after conv3 and pool2
#define OUTPUT_HEIGHT 4  // After two maxpools: 16/2=8, 8/2=4
#define OUTPUT_WIDTH 4

#define INPUT_SIZE (HEIGHT * WIDTH * IN_CHANNELS)
#define OUTPUT_SIZE (OUTPUT_HEIGHT * OUTPUT_WIDTH * OUT_CHANNELS)
// #define OUTPUT_SIZE INPUT_SIZE

// Conv1: 32 out channels, weights [32][1][3][3] = 32*1*9 = 288, bias 32
#define CONV1_WEIGHT_SIZE (32 * 1 * 3 * 3)
#define CONV1_BIAS_SIZE 32

// Conv2: 32 out, 32 in, [32][32][3][3] = 32*32*9 = 9216, bias 32
#define CONV2_WEIGHT_SIZE (32 * 32 * 3 * 3)
#define CONV2_BIAS_SIZE 32

// Conv3: same as conv2
#define CONV3_WEIGHT_SIZE (32 * 32 * 3 * 3)
#define CONV3_BIAS_SIZE 32

// Assuming weights and biases are defined in "weights.h"
#include "weights.h"

#define Q_SCALE 12

// FC struct equivalent to the class in test.cpp
typedef struct {
    int input_size;
    int output_size;
    int16_t *weights;
    int16_t *bias;
} FC;

void FC_init(FC *self, int is, int os, int16_t *w, int16_t *b) {
    self->input_size = is;
    self->output_size = os;
    self->weights = w;
    self->bias = b;
}

void FC_compute(FC *self, int16_t* input_buf, int16_t* output_stream, int is_relu) {
    for (int oc = 0; oc < self->output_size; oc++) {
        int32_t sum = 0;
        for (int ic = 0; ic < self->input_size; ic++) {
            sum += input_buf[ic] * self->weights[oc * self->input_size + ic];
        }
        sum += self->bias[oc] << Q_SCALE;
        int32_t scaled_result = sum >> Q_SCALE;

        if (scaled_result > INT16_MAX) {
            scaled_result = INT16_MAX;
        } else if (scaled_result < INT16_MIN) {
            scaled_result = INT16_MIN;
        }

        int16_t result = (int16_t)scaled_result;
        output_stream[oc] = is_relu ? (result > 0 ? result : 0) : result;
    }
}

void print_weights_info(const char* name, int16_t* data, size_t size) {
    xil_printf("%s size: %d elements\n", name, size);
    xil_printf("First 10 elements: ");
    for (int i = 0; i < 10 && i < size; i++) {
        xil_printf("%d ", data[i]);
    }
    xil_printf("\n");
}

int main() {
    init_platform();
    // Xil_DCacheDisable();
    XCnn_top cnn_inst;
    if (XCnn_top_Initialize(&cnn_inst, XPAR_XCNN_TOP_0_BASEADDR) != XST_SUCCESS) {
        xil_printf("CNN IP Initialization failed\r\n");
        return -1;
    }

    // Use static buffers to avoid malloc failures
    int16_t input_buf[INPUT_SIZE] __attribute__((aligned(32)));
    int16_t output_buf[OUTPUT_SIZE] __attribute__((aligned(32)));
    int16_t conv1_weight_buf[CONV1_WEIGHT_SIZE] __attribute__((aligned(32)));
    int16_t conv1_bias_buf[CONV1_BIAS_SIZE] __attribute__((aligned(32)));
    int16_t conv2_weight_buf[CONV2_WEIGHT_SIZE] __attribute__((aligned(32)));
    int16_t conv2_bias_buf[CONV2_BIAS_SIZE] __attribute__((aligned(32)));
    int16_t conv3_weight_buf[CONV3_WEIGHT_SIZE] __attribute__((aligned(32)));
    int16_t conv3_bias_buf[CONV3_BIAS_SIZE] __attribute__((aligned(32)));
    // Dynamically allocate buffers with alignment (using posix_memalign for 32-byte alignment, suitable for AXI)
    // Include <stdlib.h> for posix_memalign
    
    // // Dynamically allocate buffers using malloc
    // int16_t *input_buf = (int16_t *)malloc(INPUT_SIZE * sizeof(int16_t));
    // int16_t *output_buf = (int16_t *)malloc(OUTPUT_SIZE * sizeof(int16_t));
    // int16_t *conv1_weight_buf = (int16_t *)malloc(CONV1_WEIGHT_SIZE * sizeof(int16_t));
    // int16_t *conv1_bias_buf = (int16_t *)malloc(CONV1_BIAS_SIZE * sizeof(int16_t));
    // int16_t *conv2_weight_buf = (int16_t *)malloc(CONV2_WEIGHT_SIZE * sizeof(int16_t));
    // int16_t *conv2_bias_buf = (int16_t *)malloc(CONV2_BIAS_SIZE * sizeof(int16_t));
    // int16_t *conv3_weight_buf = (int16_t *)malloc(CONV3_WEIGHT_SIZE * sizeof(int16_t));
    // int16_t *conv3_bias_buf = (int16_t *)malloc(CONV3_BIAS_SIZE * sizeof(int16_t));

    // // Check if allocations succeeded
    // if (input_buf == NULL || output_buf == NULL || conv1_weight_buf == NULL || conv1_bias_buf == NULL ||
    //     conv2_weight_buf == NULL || conv2_bias_buf == NULL || conv3_weight_buf == NULL || conv3_bias_buf == NULL) {
    //     xil_printf("Memory allocation failed\r\n");
    //     return -1;
    // }

    // Initialize input: all 4096
    for (int i = 0; i < INPUT_SIZE; i++) {
        input_buf[i] = 4096;
    }

    // print_weights_info("features_0_weight", (int16_t *)features_0_weight, CONV1_WEIGHT_SIZE);
    // print_weights_info("features_0_bias", features_0_bias, CONV1_BIAS_SIZE);
    // print_weights_info("features_2_weight", (int16_t *)features_2_weight, CONV2_WEIGHT_SIZE);
    // print_weights_info("features_2_bias", features_2_bias, CONV2_BIAS_SIZE);
    // print_weights_info("features_6_weight", (int16_t *)features_6_weight, CONV3_WEIGHT_SIZE);
    // print_weights_info("features_6_bias", features_6_bias, CONV3_BIAS_SIZE);
    // print_weights_info("linear_1_weight", (int16_t *)linear_1_weight, 512 * 512);
    // print_weights_info("linear_1_bias", linear_1_bias, 512);
    // print_weights_info("linear_3_weight", (int16_t *)linear_3_weight, 512 * 5);
    // print_weights_info("linear_3_bias", linear_3_bias, 5);

    // Load weights and biases
    memcpy(conv1_weight_buf, features_0_weight, CONV1_WEIGHT_SIZE * sizeof(int16_t));
    memcpy(conv1_bias_buf, features_0_bias, CONV1_BIAS_SIZE * sizeof(int16_t));
    memcpy(conv2_weight_buf, features_2_weight, CONV2_WEIGHT_SIZE * sizeof(int16_t));
    memcpy(conv2_bias_buf, features_2_bias, CONV2_BIAS_SIZE * sizeof(int16_t));
    memcpy(conv3_weight_buf, features_6_weight, CONV3_WEIGHT_SIZE * sizeof(int16_t));
    memcpy(conv3_bias_buf, features_6_bias, CONV3_BIAS_SIZE * sizeof(int16_t));

    // // Check copied weights and biases
    // print_weights_info("conv1_weight_buf (copied)", conv1_weight_buf, CONV1_WEIGHT_SIZE);
    // print_weights_info("conv1_bias_buf (copied)", conv1_bias_buf, CONV1_BIAS_SIZE);
    // print_weights_info("conv2_weight_buf (copied)", conv2_weight_buf, CONV2_WEIGHT_SIZE);
    // print_weights_info("conv2_bias_buf (copied)", conv2_bias_buf, CONV2_BIAS_SIZE);
    // print_weights_info("conv3_weight_buf (copied)", conv3_weight_buf, CONV3_WEIGHT_SIZE);
    // print_weights_info("conv3_bias_buf (copied)", conv3_bias_buf, CONV3_BIAS_SIZE);

    // Flush caches
    Xil_DCacheFlushRange((UINTPTR)input_buf, INPUT_SIZE * sizeof(int16_t));
    Xil_DCacheFlushRange((UINTPTR)output_buf, OUTPUT_SIZE * sizeof(int16_t));
    Xil_DCacheFlushRange((UINTPTR)conv1_weight_buf, CONV1_WEIGHT_SIZE * sizeof(int16_t));
    Xil_DCacheFlushRange((UINTPTR)conv1_bias_buf, CONV1_BIAS_SIZE * sizeof(int16_t));
    Xil_DCacheFlushRange((UINTPTR)conv2_weight_buf, CONV2_WEIGHT_SIZE * sizeof(int16_t));
    Xil_DCacheFlushRange((UINTPTR)conv2_bias_buf, CONV2_BIAS_SIZE * sizeof(int16_t));
    Xil_DCacheFlushRange((UINTPTR)conv3_weight_buf, CONV3_WEIGHT_SIZE * sizeof(int16_t));
    Xil_DCacheFlushRange((UINTPTR)conv3_bias_buf, CONV3_BIAS_SIZE * sizeof(int16_t));
    // Set addresses
    XCnn_top_Set_input_r(&cnn_inst, (UINTPTR)input_buf);
    XCnn_top_Set_output_r(&cnn_inst, (UINTPTR)output_buf);
    XCnn_top_Set_conv1_weights(&cnn_inst, (UINTPTR)conv1_weight_buf);
    XCnn_top_Set_conv1_bias(&cnn_inst, (UINTPTR)conv1_bias_buf);
    XCnn_top_Set_conv2_weights(&cnn_inst, (UINTPTR)conv2_weight_buf);
    XCnn_top_Set_conv2_bias(&cnn_inst, (UINTPTR)conv2_bias_buf);
    XCnn_top_Set_conv3_weights(&cnn_inst, (UINTPTR)conv3_weight_buf);
    XCnn_top_Set_conv3_bias(&cnn_inst, (UINTPTR)conv3_bias_buf);
    XCnn_top_Set_conv1_weights(&cnn_inst, (UINTPTR)features_0_weight);
    XCnn_top_Set_conv1_bias(&cnn_inst, (UINTPTR)features_0_bias);
    XCnn_top_Set_conv2_weights(&cnn_inst, (UINTPTR)features_2_weight);
    XCnn_top_Set_conv2_bias(&cnn_inst, (UINTPTR)features_2_bias);
    XCnn_top_Set_conv3_weights(&cnn_inst, (UINTPTR)features_6_weight);
    XCnn_top_Set_conv3_bias(&cnn_inst, (UINTPTR)features_6_bias);
    // Set addresses and verify each one
    // UINTPTR expected_addr;

    // // Input
    // expected_addr = (UINTPTR)input_buf;
    // XCnn_top_Set_input_r(&cnn_inst, expected_addr);
    // UINTPTR read_input = XCnn_top_Get_input_r(&cnn_inst);
    // if (read_input != expected_addr) {
    //     xil_printf("Error: input_r address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_input);
    //     return -1;  // Or handle error as needed
    // }

    // // Output
    // expected_addr = (UINTPTR)output_buf;
    // XCnn_top_Set_output_r(&cnn_inst, expected_addr);
    // UINTPTR read_output = XCnn_top_Get_output_r(&cnn_inst);

    // if (read_output != expected_addr) {
    //     xil_printf("Error: output_r address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_output);
    //     return -1;
    // }

    // // Conv1 weights
    // expected_addr = (UINTPTR)conv1_weight_buf;
    // XCnn_top_Set_conv1_weights(&cnn_inst, expected_addr);
    // UINTPTR read_conv1_weights = XCnn_top_Get_conv1_weights(&cnn_inst);
    // if (read_conv1_weights != expected_addr) {
    //     xil_printf("Error: conv1_weights address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_conv1_weights);
    //     return -1;
    // }

    // // Conv1 bias
    // expected_addr = (UINTPTR)conv1_bias_buf;
    // XCnn_top_Set_conv1_bias(&cnn_inst, expected_addr);
    // UINTPTR read_conv1_bias = XCnn_top_Get_conv1_bias(&cnn_inst);
    // // while (read_conv1_bias != expected_addr) {
    // //     XCnn_top_Set_conv1_bias(&cnn_inst, expected_addr);
    // //     read_conv1_bias = XCnn_top_Get_conv1_bias(&cnn_inst);
    // // }
    // if (read_conv1_bias != expected_addr) {
    //     xil_printf("Error: conv1_bias address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_conv1_bias);
    //     return -1;
    // }

    // // Conv2 weights
    // expected_addr = (UINTPTR)conv2_weight_buf;
    // XCnn_top_Set_conv2_weights(&cnn_inst, expected_addr);
    // UINTPTR read_conv2_weights = XCnn_top_Get_conv2_weights(&cnn_inst);
    // if (read_conv2_weights != expected_addr) {
    //     xil_printf("Error: conv2_weights address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_conv2_weights);
    //     return -1;
    // }

    // // Conv2 bias
    // expected_addr = (UINTPTR)conv2_bias_buf;
    // XCnn_top_Set_conv2_bias(&cnn_inst, expected_addr);
    // UINTPTR read_conv2_bias = XCnn_top_Get_conv2_bias(&cnn_inst);
    // if (read_conv2_bias != expected_addr) {
    //     xil_printf("Error: conv2_bias address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_conv2_bias);
    //     return -1;
    // }

    // // Conv3 weights
    // expected_addr = (UINTPTR)conv3_weight_buf;
    // XCnn_top_Set_conv3_weights(&cnn_inst, expected_addr);
    // UINTPTR read_conv3_weights = XCnn_top_Get_conv3_weights(&cnn_inst);
    // if (read_conv3_weights != expected_addr) {
    //     xil_printf("Error: conv3_weights address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_conv3_weights);
    //     return -1;
    // }

    // // Conv3 bias
    // expected_addr = (UINTPTR)conv3_bias_buf;
    // XCnn_top_Set_conv3_bias(&cnn_inst, expected_addr);
    // UINTPTR read_conv3_bias = XCnn_top_Get_conv3_bias(&cnn_inst);
    // if (read_conv3_bias != expected_addr) {
    //     xil_printf("Error: conv3_bias address mismatch! Set: 0x%X, Read: 0x%X\r\n", expected_addr, read_conv3_bias);
    //     return -1;
    // }

    // xil_printf("All address settings verified successfully.\r\n");
    // Start the IP
    // u32 is_ready = XCnn_top_IsReady(&cnn_inst);
    // u32 is_idle = XCnn_top_IsIdle(&cnn_inst);
    // xil_printf("Before start: Ready=%d, Idle=%d\n", is_ready, is_idle);

    XCnn_top_Start(&cnn_inst);

    // Wait for done
    int time = 0;
    while (!XCnn_top_IsDone(&cnn_inst)) {
        // if (time++ % 100000000 == 0) {
        //     u32 is_done = XCnn_top_IsDone(&cnn_inst);
        //     u32 is_idle = XCnn_top_IsIdle(&cnn_inst);
        //     u32 is_ready = XCnn_top_IsReady(&cnn_inst);
        //     Xil_DCacheInvalidateRange((UINTPTR)output_buf, OUTPUT_SIZE *sizeof(int16_t));
        //     u16 stage = output_buf[0];
        //     xil_printf("Time: %d | Status: Done=%d, Idle=%d, Ready=%d, Stage=%d\n", 
        //             time / 100000000, is_done, is_idle, is_ready, stage);
        //     print_weights_info("conv1_weight_buf (copied)", conv1_weight_buf, CONV1_WEIGHT_SIZE);
        //     print_weights_info("conv1_bias_buf (copied)", conv1_bias_buf, CONV1_BIAS_SIZE);
        //     print_weights_info("conv2_weight_buf (copied)", conv2_weight_buf, CONV2_WEIGHT_SIZE);
        //     print_weights_info("conv2_bias_buf (copied)", conv2_bias_buf, CONV2_BIAS_SIZE);
        //     print_weights_info("conv3_weight_buf (copied)", conv3_weight_buf, CONV3_WEIGHT_SIZE);
        //     print_weights_info("conv3_bias_buf (copied)", conv3_bias_buf, CONV3_BIAS_SIZE);
        //     xil_printf("\n");
        // }
        // 添加超时退出，例如 if (time > 1000000000) { xil_printf("Timeout!\n"); break; }
    }

    // Invalidate cache for output
    Xil_DCacheInvalidateRange((UINTPTR)output_buf,  OUTPUT_SIZE * sizeof(int16_t));
    // for (int i = 0; i < OUTPUT_SIZE; i++) {
    //     xil_printf("id: %d  out: %d\n", i, output_buf[i]);
    // }

    // Process FC layers
    int16_t fc1_input[512];
    int16_t fc1_output[512];
    int16_t fc2_output[5];

    for (int ch = 0; ch < 32; ch++) {
        for (int h = 0; h < 4; h++) {
            for (int w = 0; w < 4; w++) {
                fc1_input[ch * 16 + h * 4 + w] = output_buf[(h * 4 + w) * 32 + ch];
            }
        }
    }

    FC fc1;
    FC_init(&fc1, 512, 512, (int16_t *)linear_1_weight, linear_1_bias);
    FC fc2;
    FC_init(&fc2, 512, 5, (int16_t *)linear_3_weight, linear_3_bias);

    FC_compute(&fc1, fc1_input, fc1_output, 1);
    FC_compute(&fc2, fc1_output, fc2_output, 0);

    float result[5];
    for (int i = 0; i < 5; i++) {
        result[i] = (float)fc2_output[i] / 4096.0f;
        // xil_printf("Output[%d] = %d\n", i, fc2_output[i]);

        // Manual float printing
        float abs_val = fabsf(result[i]);
        int int_part = (int)abs_val;
        int frac_part = (int)((abs_val - int_part) * 10000);  // 4 decimal places
        if (result[i] < 0) {
            xil_printf("Output[%d] = -%d.%04d\n", i, int_part, frac_part);
        } else {
            xil_printf("Output[%d] = %d.%04d\n", i, int_part, frac_part);
        }
    }
    xil_printf("exit main");
    cleanup_platform();
    return 0;
}