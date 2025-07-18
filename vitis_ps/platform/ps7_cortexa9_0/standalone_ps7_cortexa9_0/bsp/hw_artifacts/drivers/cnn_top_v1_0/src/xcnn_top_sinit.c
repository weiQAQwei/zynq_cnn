// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcnn_top.h"

extern XCnn_top_Config XCnn_top_ConfigTable[];

#ifdef SDT
XCnn_top_Config *XCnn_top_LookupConfig(UINTPTR BaseAddress) {
	XCnn_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCnn_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCnn_top_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCnn_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_top_Initialize(XCnn_top *InstancePtr, UINTPTR BaseAddress) {
	XCnn_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCnn_top_Config *XCnn_top_LookupConfig(u16 DeviceId) {
	XCnn_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCNN_TOP_NUM_INSTANCES; Index++) {
		if (XCnn_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCnn_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_top_Initialize(XCnn_top *InstancePtr, u16 DeviceId) {
	XCnn_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

