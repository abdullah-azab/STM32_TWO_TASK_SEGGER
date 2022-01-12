################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/org/Source/croutine.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/list.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/queue.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/tasks.c \
../Middlewares/Third_Party/FreeRTOS/org/Source/timers.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/list.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/queue.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.o \
./Middlewares/Third_Party/FreeRTOS/org/Source/timers.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/org/Source/croutine.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/event_groups.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/list.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/queue.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/tasks.d \
./Middlewares/Third_Party/FreeRTOS/org/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/org/Source/%.o: ../Middlewares/Third_Party/FreeRTOS/org/Source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -DSTM32 -DSTM32F7 -DSTM32F767ZITx -DNUCLEO_F767ZI -DDEBUG -DSTM32F767xx -DUSE_HAL_DRIVER -DUSE_RTOS_SYSTICK -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/HAL_Driver/Inc/Legacy" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/SEGGER/Config" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/SEGGER/OS" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/SEGGER/SEGGER" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/FreeRTOS/org/Source/portable/GCC/ARM_CM7" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/FreeRTOS/org/Source/include" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Utilities/STM32F7xx_Nucleo_144" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/inc" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/CMSIS/device" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/CMSIS/core" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/Middlewares/Third_Party/FreeRTOS/org/Source/CMSIS_RTOS" -I"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/HAL_Driver/Inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


