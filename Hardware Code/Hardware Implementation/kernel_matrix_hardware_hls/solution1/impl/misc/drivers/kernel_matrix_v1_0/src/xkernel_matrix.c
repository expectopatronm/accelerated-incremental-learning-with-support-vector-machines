// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkernel_matrix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKernel_matrix_CfgInitialize(XKernel_matrix *InstancePtr, XKernel_matrix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKernel_matrix_Start(XKernel_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKernel_matrix_IsDone(XKernel_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKernel_matrix_IsIdle(XKernel_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKernel_matrix_IsReady(XKernel_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKernel_matrix_EnableAutoRestart(XKernel_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XKernel_matrix_DisableAutoRestart(XKernel_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XKernel_matrix_Set_length_x(XKernel_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_LENGTH_X_DATA, Data);
}

u32 XKernel_matrix_Get_length_x(XKernel_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_LENGTH_X_DATA);
    return Data;
}

void XKernel_matrix_Set_tile_size(XKernel_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_TILE_SIZE_DATA, Data);
}

u32 XKernel_matrix_Get_tile_size(XKernel_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_TILE_SIZE_DATA);
    return Data;
}

void XKernel_matrix_Set_remaining_size(XKernel_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_REMAINING_SIZE_DATA, Data);
}

u32 XKernel_matrix_Get_remaining_size(XKernel_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_REMAINING_SIZE_DATA);
    return Data;
}

void XKernel_matrix_InterruptGlobalEnable(XKernel_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_GIE, 1);
}

void XKernel_matrix_InterruptGlobalDisable(XKernel_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_GIE, 0);
}

void XKernel_matrix_InterruptEnable(XKernel_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_IER);
    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XKernel_matrix_InterruptDisable(XKernel_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_IER);
    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XKernel_matrix_InterruptClear(XKernel_matrix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_matrix_WriteReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XKernel_matrix_InterruptGetEnabled(XKernel_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_IER);
}

u32 XKernel_matrix_InterruptGetStatus(XKernel_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_matrix_ReadReg(InstancePtr->Control_bus_BaseAddress, XKERNEL_MATRIX_CONTROL_BUS_ADDR_ISR);
}

