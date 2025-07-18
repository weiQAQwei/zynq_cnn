#ifndef WEIGHTS_H
#define WEIGHTS_H

#include <cstdint>

extern int16_t features_0_weight[32][1][3][3];
extern int16_t features_0_bias[32];
extern int16_t features_2_weight[32][32][3][3];
extern int16_t features_2_bias[32];
extern int16_t features_6_weight[32][32][3][3];
extern int16_t features_6_bias[32];
extern int16_t linear_1_weight[512][512];
extern int16_t linear_1_bias[512];
extern int16_t linear_3_weight[5][512];
extern int16_t linear_3_bias[5];

#endif // WEIGHTS_H