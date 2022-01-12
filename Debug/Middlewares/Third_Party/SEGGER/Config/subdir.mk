################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.c 

OBJS += \
./Middlewares/Third_Party/SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.o 

C_DEPS += \
./Middlewares/Third_Party/SEGGER/Config/SEGGER_SYSVIEW_Config_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/SEGGER/Config/%.o: ../Middlewares/Third_Party/SEGGER/Config/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -DSTM32 -DSTM32F7 -DSTM32F767ZITx -DNUCLEO_F767ZI -DDEBUG -DSTM32F767xx -DUSE_HAL_DRIVER -DUSE_RTOS_SYSTICK -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/HAL_Driver/Inc/Legacy" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/SEGGER/Config" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/SEGGER/OS" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/SEGGER/SEGGER" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/FreeRTOS/org/Source/portable/GCC/ARM_CM7" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/FreeRTOS/org/Source/include" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Utilities/STM32F7xx_Nucleo_144" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/inc" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/CMSIS/device" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/CMSIS/core" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/FreeRTOS/org/Source/CMSIS_RTOS" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/HAL_Driver/Inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


