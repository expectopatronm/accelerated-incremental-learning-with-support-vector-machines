// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpredict_function.h"

extern XPredict_function_Config XPredict_function_ConfigTable[];

XPredict_function_Config *XPredict_function_LookupConfig(u16 DeviceId) {
	XPredict_function_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPREDICT_FUNCTION_NUM_INSTANCES; Index++) {
		if (XPredict_function_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPredict_function_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPredict_function_Initialize(XPredict_function *InstancePtr, u16 DeviceId) {
	XPredict_function_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPredict_function_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPredict_function_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
