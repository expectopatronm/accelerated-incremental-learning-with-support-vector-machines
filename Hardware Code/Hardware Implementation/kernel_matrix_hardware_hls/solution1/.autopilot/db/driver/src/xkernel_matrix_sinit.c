// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkernel_matrix.h"

extern XKernel_matrix_Config XKernel_matrix_ConfigTable[];

XKernel_matrix_Config *XKernel_matrix_LookupConfig(u16 DeviceId) {
	XKernel_matrix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKERNEL_MATRIX_NUM_INSTANCES; Index++) {
		if (XKernel_matrix_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKernel_matrix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKernel_matrix_Initialize(XKernel_matrix *InstancePtr, u16 DeviceId) {
	XKernel_matrix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKernel_matrix_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKernel_matrix_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

