################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../top.cpp 

OBJS += \
./source/top.o 

CPP_DEPS += \
./source/top.d 


# Each subdirectory must supply rules for building sources it contributes
source/top.o: F:/Hardware_Implementation/combined_hls/top.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IE:/Vivado/Vivado/2018.2/include/ap_sysc -IF:/Hardware_Implementation -IE:/Vivado/Vivado/2018.2/win64/tools/auto_cc/include -IE:/Vivado/Vivado/2018.2/include/etc -IE:/Vivado/Vivado/2018.2/include -IE:/Vivado/Vivado/2018.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


