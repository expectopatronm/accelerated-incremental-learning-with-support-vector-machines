// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XACCELERATOR_FUNCTION_H
#define XACCELERATOR_FUNCTION_H

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
#include "xaccelerator_function_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XAccelerator_function_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XAccelerator_function;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAccelerator_function_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAccelerator_function_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAccelerator_function_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAccelerator_function_ReadReg(BaseAddress, RegOffset) \
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
int XAccelerator_function_Initialize(XAccelerator_function *InstancePtr, u16 DeviceId);
XAccelerator_function_Config* XAccelerator_function_LookupConfig(u16 DeviceId);
int XAccelerator_function_CfgInitialize(XAccelerator_function *InstancePtr, XAccelerator_function_Config *ConfigPtr);
#else
int XAccelerator_function_Initialize(XAccelerator_function *InstancePtr, const char* InstanceName);
int XAccelerator_function_Release(XAccelerator_function *InstancePtr);
#endif

void XAccelerator_function_Start(XAccelerator_function *InstancePtr);
u32 XAccelerator_function_IsDone(XAccelerator_function *InstancePtr);
u32 XAccelerator_function_IsIdle(XAccelerator_function *InstancePtr);
u32 XAccelerator_function_IsReady(XAccelerator_function *InstancePtr);
void XAccelerator_function_EnableAutoRestart(XAccelerator_function *InstancePtr);
void XAccelerator_function_DisableAutoRestart(XAccelerator_function *InstancePtr);

void XAccelerator_function_Set_function_flag(XAccelerator_function *InstancePtr, u32 Data);
u32 XAccelerator_function_Get_function_flag(XAccelerator_function *InstancePtr);
void XAccelerator_function_Set_length_x_kernel(XAccelerator_function *InstancePtr, u32 Data);
u32 XAccelerator_function_Get_length_x_kernel(XAccelerator_function *InstancePtr);
void XAccelerator_function_Set_tile_size_kernel(XAccelerator_function *InstancePtr, u32 Data);
u32 XAccelerator_function_Get_tile_size_kernel(XAccelerator_function *InstancePtr);
void XAccelerator_function_Set_remaining_size_kernel(XAccelerator_function *InstancePtr, u32 Data);
u32 XAccelerator_function_Get_remaining_size_kernel(XAccelerator_function *InstancePtr);
void XAccelerator_function_Set_tile_count_predict(XAccelerator_function *InstancePtr, u32 Data);
u32 XAccelerator_function_Get_tile_count_predict(XAccelerator_function *InstancePtr);
void XAccelerator_function_Set_remainder_predict(XAccelerator_function *InstancePtr, u32 Data);
u32 XAccelerator_function_Get_remainder_predict(XAccelerator_function *InstancePtr);
void XAccelerator_function_Set_dual_coeff_length(XAccelerator_function *InstancePtr, u32 Data);
u32 XAccelerator_function_Get_dual_coeff_length(XAccelerator_function *InstancePtr);

void XAccelerator_function_InterruptGlobalEnable(XAccelerator_function *InstancePtr);
void XAccelerator_function_InterruptGlobalDisable(XAccelerator_function *InstancePtr);
void XAccelerator_function_InterruptEnable(XAccelerator_function *InstancePtr, u32 Mask);
void XAccelerator_function_InterruptDisable(XAccelerator_function *InstancePtr, u32 Mask);
void XAccelerator_function_InterruptClear(XAccelerator_function *InstancePtr, u32 Mask);
u32 XAccelerator_function_InterruptGetEnabled(XAccelerator_function *InstancePtr);
u32 XAccelerator_function_InterruptGetStatus(XAccelerator_function *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
