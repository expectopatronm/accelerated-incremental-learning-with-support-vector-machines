// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPREDICT_FUNCTION_H
#define XPREDICT_FUNCTION_H

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
#include "xpredict_function_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XPredict_function_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XPredict_function;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPredict_function_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPredict_function_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPredict_function_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPredict_function_ReadReg(BaseAddress, RegOffset) \
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
int XPredict_function_Initialize(XPredict_function *InstancePtr, u16 DeviceId);
XPredict_function_Config* XPredict_function_LookupConfig(u16 DeviceId);
int XPredict_function_CfgInitialize(XPredict_function *InstancePtr, XPredict_function_Config *ConfigPtr);
#else
int XPredict_function_Initialize(XPredict_function *InstancePtr, const char* InstanceName);
int XPredict_function_Release(XPredict_function *InstancePtr);
#endif

void XPredict_function_Start(XPredict_function *InstancePtr);
u32 XPredict_function_IsDone(XPredict_function *InstancePtr);
u32 XPredict_function_IsIdle(XPredict_function *InstancePtr);
u32 XPredict_function_IsReady(XPredict_function *InstancePtr);
void XPredict_function_EnableAutoRestart(XPredict_function *InstancePtr);
void XPredict_function_DisableAutoRestart(XPredict_function *InstancePtr);

void XPredict_function_Set_tile_count(XPredict_function *InstancePtr, u32 Data);
u32 XPredict_function_Get_tile_count(XPredict_function *InstancePtr);
void XPredict_function_Set_remainder(XPredict_function *InstancePtr, u32 Data);
u32 XPredict_function_Get_remainder(XPredict_function *InstancePtr);
void XPredict_function_Set_dual_coeff_length(XPredict_function *InstancePtr, u32 Data);
u32 XPredict_function_Get_dual_coeff_length(XPredict_function *InstancePtr);

void XPredict_function_InterruptGlobalEnable(XPredict_function *InstancePtr);
void XPredict_function_InterruptGlobalDisable(XPredict_function *InstancePtr);
void XPredict_function_InterruptEnable(XPredict_function *InstancePtr, u32 Mask);
void XPredict_function_InterruptDisable(XPredict_function *InstancePtr, u32 Mask);
void XPredict_function_InterruptClear(XPredict_function *InstancePtr, u32 Mask);
u32 XPredict_function_InterruptGetEnabled(XPredict_function *InstancePtr);
u32 XPredict_function_InterruptGetStatus(XPredict_function *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
