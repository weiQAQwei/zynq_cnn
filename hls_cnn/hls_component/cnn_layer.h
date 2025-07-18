// cnn_layer.h
#ifndef CNN_LAYER_H
#define CNN_LAYER_H

#include "hls_stream.h"
#include <cstdint>

// 前向声明
class ConvLayer;
class MaxPool;
class FC;

// 函数声明
void cnn_top(int16_t *input, int16_t *output,
             int16_t conv1_weights[32][1][3][3], int16_t conv1_bias[32],
             int16_t conv2_weights[32][32][3][3], int16_t conv2_bias[32],
             int16_t conv3_weights[32][32][3][3], int16_t conv3_bias[32]);
// void cnn_top(int16_t *input, int16_t *output
//             //  int16_t conv1_weights[32][1][3][3], int16_t conv1_bias[32],
//             //  int16_t conv2_weights[32][32][3][3], int16_t conv2_bias[32],
//             //  int16_t conv3_weights[32][32][3][3], int16_t conv3_bias[32]
//             ) ;

#endif