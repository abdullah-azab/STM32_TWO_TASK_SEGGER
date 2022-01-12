# STM32 TWO TASK SEGGER

[![FREE-RTOS](https://www.freertos.org/fr-content-src/uploads/2018/07/logo-1.jpg)](https://www.freertos.org/) [![SEGGER](https://wiki.segger.com/resources/assets/SeggerLogo.png?1bcf2)](https://www.segger.com/) [![J_Link](https://wiki.segger.com/images/thumb/8/81/Category_Icon_Debug_Tools.svg/200px-Category_Icon_Debug_Tools.svg.png)](https://www.segger.com/products/debug-probes/j-link/)

### An exercise in FREE-RTOS and Segger Sysview integration , On STM-32 NUCLIO-767ZI board.

Segger Sysview is a great tool for debugging real time OS and seeing task scheduling in action .
in this exercise single shot and continuous capturing are poth used and tested.

## Features

- FREE-RTOS is configured with two tasks of equel priorities.
- Each of the tasks sends a unique message via UART.
- UART usage contestation is hadled with shared a blocking flag.
- Single shot mode requirements and patches are integrated in th project.
- J-Link firmware is flashed on the board to enable continuous capture mode.


## screenshots

|   | Image |
| ------ | ------ |
| UART Termenal | ![uart termenal](https://github.com/abdullahazab/STM32_TWO_TASK_SEGGER/blob/main/Img/Screenshot%202022-01-12%20224850.png?raw=true) |
| Single shot capture | ![uart termenal](https://github.com/abdullahazab/STM32_TWO_TASK_SEGGER/blob/main/Img/Screenshot%202022-01-12%20215229.png?raw=true) |
| Continous capture mode| ![uart termenal](https://github.com/abdullahazab/STM32_TWO_TASK_SEGGER/blob/main/Img/Screenshot%202022-01-12%20204000.png?raw=true) |

