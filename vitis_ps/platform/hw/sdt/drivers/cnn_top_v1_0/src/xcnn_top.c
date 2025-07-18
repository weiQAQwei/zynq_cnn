// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcnn_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_top_CfgInitialize(XCnn_top *InstancePtr, XCnn_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_top_Start(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_top_IsDone(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_top_IsIdle(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_top_IsReady(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_top_EnableAutoRestart(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCnn_top_DisableAutoRestart(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XCnn_top_Set_input_r(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_INPUT_R_DATA, Data);
}

u32 XCnn_top_Get_input_r(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_INPUT_R_DATA);
    return Data;
}

void XCnn_top_Set_output_r(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_OUTPUT_R_DATA, Data);
}

u32 XCnn_top_Get_output_r(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_OUTPUT_R_DATA);
    return Data;
}

void XCnn_top_Set_conv1_weights(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV1_WEIGHTS_DATA, Data);
}

u32 XCnn_top_Get_conv1_weights(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV1_WEIGHTS_DATA);
    return Data;
}

void XCnn_top_Set_conv1_bias(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV1_BIAS_DATA, Data);
}

u32 XCnn_top_Get_conv1_bias(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV1_BIAS_DATA);
    return Data;
}

void XCnn_top_Set_conv2_weights(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV2_WEIGHTS_DATA, Data);
}

u32 XCnn_top_Get_conv2_weights(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV2_WEIGHTS_DATA);
    return Data;
}

void XCnn_top_Set_conv2_bias(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV2_BIAS_DATA, Data);
}

u32 XCnn_top_Get_conv2_bias(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV2_BIAS_DATA);
    return Data;
}

void XCnn_top_Set_conv3_weights(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV3_WEIGHTS_DATA, Data);
}

u32 XCnn_top_Get_conv3_weights(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV3_WEIGHTS_DATA);
    return Data;
}

void XCnn_top_Set_conv3_bias(XCnn_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV3_BIAS_DATA, Data);
}

u32 XCnn_top_Get_conv3_bias(XCnn_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_CONV3_BIAS_DATA);
    return Data;
}

void XCnn_top_InterruptGlobalEnable(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_GIE, 1);
}

void XCnn_top_InterruptGlobalDisable(XCnn_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_GIE, 0);
}

void XCnn_top_InterruptEnable(XCnn_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER);
    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XCnn_top_InterruptDisable(XCnn_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER);
    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCnn_top_InterruptClear(XCnn_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_top_WriteReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XCnn_top_InterruptGetEnabled(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_IER);
}

u32 XCnn_top_InterruptGetStatus(XCnn_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_top_ReadReg(InstancePtr->Control_BaseAddress, XCNN_TOP_CONTROL_ADDR_ISR);
}

