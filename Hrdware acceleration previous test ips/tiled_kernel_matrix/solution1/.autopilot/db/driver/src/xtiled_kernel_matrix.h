// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XTILED_KERNEL_MATRIX_H
#define XTILED_KERNEL_MATRIX_H

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
#include "xtiled_kernel_matrix_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XTiled_kernel_matrix_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XTiled_kernel_matrix;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTiled_kernel_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTiled_kernel_matrix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTiled_kernel_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTiled_kernel_matrix_ReadReg(BaseAddress, RegOffset) \
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
int XTiled_kernel_matrix_Initialize(XTiled_kernel_matrix *InstancePtr, u16 DeviceId);
XTiled_kernel_matrix_Config* XTiled_kernel_matrix_LookupConfig(u16 DeviceId);
int XTiled_kernel_matrix_CfgInitialize(XTiled_kernel_matrix *InstancePtr, XTiled_kernel_matrix_Config *ConfigPtr);
#else
int XTiled_kernel_matrix_Initialize(XTiled_kernel_matrix *InstancePtr, const char* InstanceName);
int XTiled_kernel_matrix_Release(XTiled_kernel_matrix *InstancePtr);
#endif

void XTiled_kernel_matrix_Start(XTiled_kernel_matrix *InstancePtr);
u32 XTiled_kernel_matrix_IsDone(XTiled_kernel_matrix *InstancePtr);
u32 XTiled_kernel_matrix_IsIdle(XTiled_kernel_matrix *InstancePtr);
u32 XTiled_kernel_matrix_IsReady(XTiled_kernel_matrix *InstancePtr);
void XTiled_kernel_matrix_EnableAutoRestart(XTiled_kernel_matrix *InstancePtr);
void XTiled_kernel_matrix_DisableAutoRestart(XTiled_kernel_matrix *InstancePtr);

void XTiled_kernel_matrix_Set_length_x(XTiled_kernel_matrix *InstancePtr, u32 Data);
u32 XTiled_kernel_matrix_Get_length_x(XTiled_kernel_matrix *InstancePtr);

void XTiled_kernel_matrix_InterruptGlobalEnable(XTiled_kernel_matrix *InstancePtr);
void XTiled_kernel_matrix_InterruptGlobalDisable(XTiled_kernel_matrix *InstancePtr);
void XTiled_kernel_matrix_InterruptEnable(XTiled_kernel_matrix *InstancePtr, u32 Mask);
void XTiled_kernel_matrix_InterruptDisable(XTiled_kernel_matrix *InstancePtr, u32 Mask);
void XTiled_kernel_matrix_InterruptClear(XTiled_kernel_matrix *InstancePtr, u32 Mask);
u32 XTiled_kernel_matrix_InterruptGetEnabled(XTiled_kernel_matrix *InstancePtr);
u32 XTiled_kernel_matrix_InterruptGetStatus(XTiled_kernel_matrix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
