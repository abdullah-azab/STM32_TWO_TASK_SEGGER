/**
 ******************************************************************************
 * @file    main.c
 * @author  Azab
 * @version V1.0
 * @brief   An Exercise on Free-rtos with two tasks of equal priority ,configured to be viewed on Segger Sysview.
 ******************************************************************************
 */

#include "stm32f7xx.h"
#include "stm32f7xx_nucleo_144.h"
#include "FreeRTOS.h"
#include "task.h"

#include <stdio.h>
#include <stdint.h>
#include<string.h>

/*-------------------------------------------------  ----------------------------------------------*/

/*------------------------------------------------- Private Free-rtos Task Handlers ----------------------------------------------*/
static void task1_handler(void* parameters);
static void task2_handler(void* parameters);

/*------------------------------------------------- Private functions ----------------------------------------------*/

static void prvSetupHardware(void);
static void prvSetupUart(void);
void printmsg(char *msg);

/*------------------------------------------------- some macros ----------------------------------------------*/
#define TRUE 1
#define FALSE 0
#define AVAILABLE TRUE
#define NOT_AVAILABLE FALSE

/*------------------------------------------------- Global variable section ----------------------------------------------*/
uint32_t UART_BOUD_RATE = 115200;
char usr_msg[250] = { 0 };
char rx_msg[250] = { 0 };
uint8_t UART_ACCESS_KEY = AVAILABLE;
TaskHandle_t task1_handle = NULL;
TaskHandle_t task2_handle = NULL;
GPIO_InitTypeDef GPIO_InitStruct;
UART_HandleTypeDef uart_handle;

int main(void) {
	/*------------------------------------------------- Enable Time Stamp ----------------------------------------------*/
	CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;

	DWT->LAR = 0xC5ACCE55;

	 /* Number of clock cycles that happened after CPU reset */

	 DWT->CYCCNT = 0;

	/*enable cycle counting feature*/

	DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;

	//Enable CYCCNT in DWT_CTRL.
	//DWT->CTRL |= (1 << 0);
	//Enable ITM synchronization packets in the trace control register
	//ITM->TCR |=(1 << 2);

	/*------------------------------------------------- Clock config ----------------------------------------------*/
	//set to 16 MHz (default reset value)
	HAL_RCC_DeInit();

	// free rtos core clock value update
	SystemCoreClockUpdate();

	/*------------------------------------------------- Setup UART3 ----------------------------------------------*/
	prvSetupHardware();

	/*------------------------------------------------- Setup FREE-RTOS ----------------------------------------------*/
	sprintf(usr_msg, "This is a message sent from main, application starting. \r\n");
	printmsg(usr_msg);

	//Start Recording
	SEGGER_SYSVIEW_Conf();
	SEGGER_SYSVIEW_Start();

	BaseType_t status;
	//setup the tow tasks
	status = xTaskCreate(task1_handler, "Task-1", 200,
			"Hello world from Task-1", 2, &task1_handle);
	status = xTaskCreate(task2_handler, "Task-2", 200,
			"Hello world from Task-2", 2, &task2_handle);

	//start the freeRTOS scheduler
	vTaskStartScheduler();

	/*------------------------------------------------- loop ----------------------------------------------*/
	for (;;);

	return 0;
}

static void task1_handler(void* parameters) {

	//traceTASK_SWITCHED_IN();
	while (1) {
		if (UART_ACCESS_KEY == AVAILABLE) {
			UART_ACCESS_KEY = NOT_AVAILABLE;
			sprintf(usr_msg, "message sent From Task-1. \r\n");
			printmsg(usr_msg);
			UART_ACCESS_KEY = AVAILABLE;

			//SEGGER_SYSVIEW_Print("Task1 is yielding");
			//traceISR_EXIT_TO_SCHEDULER();

			taskYIELD();
		}

	}
}

static void task2_handler(void* parameters) {
	while (1) {
		if (UART_ACCESS_KEY == AVAILABLE) {
			UART_ACCESS_KEY = NOT_AVAILABLE;
			sprintf(usr_msg, "message sent From Task-2. \r\n");
			printmsg(usr_msg);
			UART_ACCESS_KEY = AVAILABLE;
			//SEGGER_SYSVIEW_Print("Task2 is yielding");
			//traceISR_EXIT_TO_SCHEDULER();
			taskYIELD()
			;
		}
	}
}
static void prvSetupUart(void) {


	__HAL_RCC_GPIOD_CLK_ENABLE();

	GPIO_InitStruct.Pin=GPIO_PIN_8|GPIO_PIN_9;
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	GPIO_InitStruct.Alternate = GPIO_AF7_USART3;

	HAL_GPIO_Init(GPIOD,&GPIO_InitStruct);

	__HAL_RCC_USART3_CLK_ENABLE();

	uart_handle.Instance = USART3;
	uart_handle.Init.BaudRate = 115200;
	uart_handle.Init.WordLength = UART_WORDLENGTH_8B;
	uart_handle.Init.Mode = UART_MODE_TX_RX;
	uart_handle.Init.Parity = UART_PARITY_NONE;
	uart_handle.Init.StopBits = UART_STOPBITS_1;
	uart_handle.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	uart_handle.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
	uart_handle.Init.OverSampling = UART_OVERSAMPLING_16;
	uart_handle.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;

	HAL_UART_Init(&uart_handle);
}

static void prvSetupHardware(void) {
	//setup UART3
	prvSetupUart();
}

void printmsg(char *ms) {

	for (uint32_t i = 0; i < strlen(ms); i++) {
		while (HAL_UART_GetState(&uart_handle) == HAL_UART_STATE_BUSY_TX);

		HAL_UART_Transmit(&uart_handle,(uint8_t *) &ms[i] ,1,1);
	}

}
