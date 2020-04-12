// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xpredict_function.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPredict_function_CfgInitialize(XPredict_function *InstancePtr, XPredict_function_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPredict_function_Start(XPredict_function *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPredict_function_IsDone(XPredict_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPredict_function_IsIdle(XPredict_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPredict_function_IsReady(XPredict_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPredict_function_EnableAutoRestart(XPredict_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XPredict_function_DisableAutoRestart(XPredict_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XPredict_function_Set_tile_count(XPredict_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_TILE_COUNT_DATA, Data);
}

u32 XPredict_function_Get_tile_count(XPredict_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_TILE_COUNT_DATA);
    return Data;
}

void XPredict_function_Set_remainder(XPredict_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_REMAINDER_DATA, Data);
}

u32 XPredict_function_Get_remainder(XPredict_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_REMAINDER_DATA);
    return Data;
}

void XPredict_function_Set_dual_coeff_length(XPredict_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_DUAL_COEFF_LENGTH_DATA, Data);
}

u32 XPredict_function_Get_dual_coeff_length(XPredict_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_DUAL_COEFF_LENGTH_DATA);
    return Data;
}

void XPredict_function_InterruptGlobalEnable(XPredict_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_GIE, 1);
}

void XPredict_function_InterruptGlobalDisable(XPredict_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_GIE, 0);
}

void XPredict_function_InterruptEnable(XPredict_function *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_IER);
    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XPredict_function_InterruptDisable(XPredict_function *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_IER);
    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XPredict_function_InterruptClear(XPredict_function *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPredict_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XPredict_function_InterruptGetEnabled(XPredict_function *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_IER);
}

u32 XPredict_function_InterruptGetStatus(XPredict_function *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPredict_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XPREDICT_FUNCTION_CONTROL_BUS_ADDR_ISR);
}

