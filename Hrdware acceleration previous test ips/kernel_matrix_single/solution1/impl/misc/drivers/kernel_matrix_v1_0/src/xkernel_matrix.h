// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XKERNEL_MATRIX_H
#define XKERNEL_MATRIX_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xkernel_matrix_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XKernel_matrix_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XKernel_matrix;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKernel_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKernel_matrix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKernel_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKernel_matrix_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XKernel_matrix_Initialize(XKernel_matrix *InstancePtr, u16 DeviceId);
XKernel_matrix_Config* XKernel_matrix_LookupConfig(u16 DeviceId);
int XKernel_matrix_CfgInitialize(XKernel_matrix *InstancePtr, XKernel_matrix_Config *ConfigPtr);
#else
int XKernel_matrix_Initialize(XKernel_matrix *InstancePtr, const char* InstanceName);
int XKernel_matrix_Release(XKernel_matrix *InstancePtr);
#endif

void XKernel_matrix_Start(XKernel_matrix *InstancePtr);
u32 XKernel_matrix_IsDone(XKernel_matrix *InstancePtr);
u32 XKernel_matrix_IsIdle(XKernel_matrix *InstancePtr);
u32 XKernel_matrix_IsReady(XKernel_matrix *InstancePtr);
void XKernel_matrix_EnableAutoRestart(XKernel_matrix *InstancePtr);
void XKernel_matrix_DisableAutoRestart(XKernel_matrix *InstancePtr);

void XKernel_matrix_Set_length_x(XKernel_matrix *InstancePtr, u32 Data);
u32 XKernel_matrix_Get_length_x(XKernel_matrix *InstancePtr);
void XKernel_matrix_Set_tile_size(XKernel_matrix *InstancePtr, u32 Data);
u32 XKernel_matrix_Get_tile_size(XKernel_matrix *InstancePtr);
void XKernel_matrix_Set_remaining_size(XKernel_matrix *InstancePtr, u32 Data);
u32 XKernel_matrix_Get_remaining_size(XKernel_matrix *InstancePtr);

void XKernel_matrix_InterruptGlobalEnable(XKernel_matrix *InstancePtr);
void XKernel_matrix_InterruptGlobalDisable(XKernel_matrix *InstancePtr);
void XKernel_matrix_InterruptEnable(XKernel_matrix *InstancePtr, u32 Mask);
void XKernel_matrix_InterruptDisable(XKernel_matrix *InstancePtr, u32 Mask);
void XKernel_matrix_InterruptClear(XKernel_matrix *InstancePtr, u32 Mask);
u32 XKernel_matrix_InterruptGetEnabled(XKernel_matrix *InstancePtr);
u32 XKernel_matrix_InterruptGetStatus(XKernel_matrix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif