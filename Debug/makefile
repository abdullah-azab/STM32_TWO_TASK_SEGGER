################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include src/subdir.mk
-include Utilities/STM32F7xx_Nucleo_144/subdir.mk
-include Middlewares/Third_Party/SEGGER/SEGGER/subdir.mk
-include Middlewares/Third_Party/SEGGER/OS/subdir.mk
-include Middlewares/Third_Party/SEGGER/Config/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/org/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/org/Source/portable/GCC/ARM_CM7/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/org/Source/CMSIS_RTOS/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/org/Source/subdir.mk
-include HAL_Driver/Src/Legacy/subdir.mk
-include HAL_Driver/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: STM32_TWO_TASK_SEGGER.elf

# Tool invocations
STM32_TWO_TASK_SEGGER.elf: $(OBJS) $(USER_OBJS) C:\Users\aazsn\workspace\STM32_TWO_TASK_SEGGER/LinkerScript.ld
	@echo 'Building target: $@'
	@echo 'Invoking: MCU GCC Linker'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -T"C:/Users/aazsn/workspace/STM32_TWO_TASK_SEGGER/LinkerScript.ld" -Wl,-Map=output.map -Wl,--gc-sections -o "STM32_TWO_TASK_SEGGER.elf" @"objects.list" $(USER_OBJS) $(LIBS) -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	-@echo 'Generating binary and Printing size information:'
	arm-none-eabi-objcopy -O binary "STM32_TWO_TASK_SEGGER.elf" "STM32_TWO_TASK_SEGGER.bin"
	arm-none-eabi-size "STM32_TWO_TASK_SEGGER.elf"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
