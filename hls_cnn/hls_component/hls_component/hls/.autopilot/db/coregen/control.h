// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of output_r
//        bit 31~0 - output_r[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of conv1_weights
//        bit 31~0 - conv1_weights[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of conv1_bias
//        bit 31~0 - conv1_bias[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of conv2_weights
//        bit 31~0 - conv2_weights[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of conv2_bias
//        bit 31~0 - conv2_bias[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of conv3_weights
//        bit 31~0 - conv3_weights[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of conv3_bias
//        bit 31~0 - conv3_bias[31:0] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL            0x00
#define CONTROL_ADDR_GIE                0x04
#define CONTROL_ADDR_IER                0x08
#define CONTROL_ADDR_ISR                0x0c
#define CONTROL_ADDR_INPUT_R_DATA       0x10
#define CONTROL_BITS_INPUT_R_DATA       32
#define CONTROL_ADDR_OUTPUT_R_DATA      0x18
#define CONTROL_BITS_OUTPUT_R_DATA      32
#define CONTROL_ADDR_CONV1_WEIGHTS_DATA 0x20
#define CONTROL_BITS_CONV1_WEIGHTS_DATA 32
#define CONTROL_ADDR_CONV1_BIAS_DATA    0x28
#define CONTROL_BITS_CONV1_BIAS_DATA    32
#define CONTROL_ADDR_CONV2_WEIGHTS_DATA 0x30
#define CONTROL_BITS_CONV2_WEIGHTS_DATA 32
#define CONTROL_ADDR_CONV2_BIAS_DATA    0x38
#define CONTROL_BITS_CONV2_BIAS_DATA    32
#define CONTROL_ADDR_CONV3_WEIGHTS_DATA 0x40
#define CONTROL_BITS_CONV3_WEIGHTS_DATA 32
#define CONTROL_ADDR_CONV3_BIAS_DATA    0x48
#define CONTROL_BITS_CONV3_BIAS_DATA    32
