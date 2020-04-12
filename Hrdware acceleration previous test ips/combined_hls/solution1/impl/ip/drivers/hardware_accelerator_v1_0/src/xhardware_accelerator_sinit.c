// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhardware_accelerator.h"

extern XHardware_accelerator_Config XHardware_accelerator_ConfigTable[];

XHardware_accelerator_Config *XHardware_accelerator_LookupConfig(u16 DeviceId) {
	XHardware_accelerator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHARDWARE_ACCELERATOR_NUM_INSTANCES; Index++) {
		if (XHardware_accelerator_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHardware_accelerator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHardware_accelerator_Initialize(XHardware_accelerator *InstancePtr, u16 DeviceId) {
	XHardware_accelerator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHardware_accelerator_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHardware_accelerator_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
