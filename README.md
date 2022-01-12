# STM32 TWO TASK SEGGER

[![FREE-RTOS](https://www.freertos.org/fr-content-src/uploads/2018/07/logo-1.jpg)](https://www.freertos.org/) [![SEGGER](https://wiki.segger.com/resources/assets/SeggerLogo.png?1bcf2)](https://www.segger.com/) [![J_Link](https://wiki.segger.com/images/thumb/8/81/Category_Icon_Debug_Tools.svg/200px-Category_Icon_Debug_Tools.svg.png)](https://www.segger.com/products/debug-probes/j-link/)

### An exercise in FREE-RTOS and Segger Sysview integration , On STM-32 NUCLIO-767ZI board.

Segger Sysview is a great tool for depugging real time os and seeing task sheduling in action .
in this exersie single shot and continous capturing are poth used and tested.

## Features

- FREE-RTOS is configured with two tasks of equel priorities.
- Each of the tasks send a unique message via UART.
- UART usage contistance is hadled with shared a blocking flag.
- Single shot mode reqirements and patches are applied integrated in th project.
- J-Link firmware is flashed on the board to enable continuous capture mode.


## Screane shots

|   | Image |
| ------ | ------ |
| UART Termenal | ![uart termenal](/Img/Screenshot 2022-01-12 224850.png) |
| Single shot capture | ![uart termenal](/Img/Screenshot 2022-01-12 215229.png) |
| Continous capture mode| ![uart termenal](/Img/Screenshot 2022-01-12 204000.png) |

