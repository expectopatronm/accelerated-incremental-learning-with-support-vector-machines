// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaccelerator_function.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAccelerator_function_CfgInitialize(XAccelerator_function *InstancePtr, XAccelerator_function_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAccelerator_function_Start(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAccelerator_function_IsDone(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAccelerator_function_IsIdle(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAccelerator_function_IsReady(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAccelerator_function_EnableAutoRestart(XAccelerator_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XAccelerator_function_DisableAutoRestart(XAccelerator_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XAccelerator_function_Set_function_flag(XAccelerator_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_FUNCTION_FLAG_DATA, Data);
}

u32 XAccelerator_function_Get_function_flag(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_FUNCTION_FLAG_DATA);
    return Data;
}

void XAccelerator_function_Set_length_x_kernel(XAccelerator_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_LENGTH_X_KERNEL_DATA, Data);
}

u32 XAccelerator_function_Get_length_x_kernel(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_LENGTH_X_KERNEL_DATA);
    return Data;
}

void XAccelerator_function_Set_tile_size_kernel(XAccelerator_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_TILE_SIZE_KERNEL_DATA, Data);
}

u32 XAccelerator_function_Get_tile_size_kernel(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_TILE_SIZE_KERNEL_DATA);
    return Data;
}

void XAccelerator_function_Set_remaining_size_kernel(XAccelerator_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_REMAINING_SIZE_KERNEL_DATA, Data);
}

u32 XAccelerator_function_Get_remaining_size_kernel(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_REMAINING_SIZE_KERNEL_DATA);
    return Data;
}

void XAccelerator_function_Set_tile_count_predict(XAccelerator_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_TILE_COUNT_PREDICT_DATA, Data);
}

u32 XAccelerator_function_Get_tile_count_predict(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_TILE_COUNT_PREDICT_DATA);
    return Data;
}

void XAccelerator_function_Set_remainder_predict(XAccelerator_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_REMAINDER_PREDICT_DATA, Data);
}

u32 XAccelerator_function_Get_remainder_predict(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_REMAINDER_PREDICT_DATA);
    return Data;
}

void XAccelerator_function_Set_dual_coeff_length(XAccelerator_function *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_DUAL_COEFF_LENGTH_DATA, Data);
}

u32 XAccelerator_function_Get_dual_coeff_length(XAccelerator_function *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_DUAL_COEFF_LENGTH_DATA);
    return Data;
}

void XAccelerator_function_InterruptGlobalEnable(XAccelerator_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_GIE, 1);
}

void XAccelerator_function_InterruptGlobalDisable(XAccelerator_function *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_GIE, 0);
}

void XAccelerator_function_InterruptEnable(XAccelerator_function *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_IER);
    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XAccelerator_function_InterruptDisable(XAccelerator_function *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_IER);
    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XAccelerator_function_InterruptClear(XAccelerator_function *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_function_WriteReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XAccelerator_function_InterruptGetEnabled(XAccelerator_function *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_IER);
}

u32 XAccelerator_function_InterruptGetStatus(XAccelerator_function *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_function_ReadReg(InstancePtr->Control_bus_BaseAddress, XACCELERATOR_FUNCTION_CONTROL_BUS_ADDR_ISR);
}

