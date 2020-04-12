// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaccelerator_function.h"

extern XAccelerator_function_Config XAccelerator_function_ConfigTable[];

XAccelerator_function_Config *XAccelerator_function_LookupConfig(u16 DeviceId) {
	XAccelerator_function_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACCELERATOR_FUNCTION_NUM_INSTANCES; Index++) {
		if (XAccelerator_function_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAccelerator_function_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccelerator_function_Initialize(XAccelerator_function *InstancePtr, u16 DeviceId) {
	XAccelerator_function_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccelerator_function_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccelerator_function_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

