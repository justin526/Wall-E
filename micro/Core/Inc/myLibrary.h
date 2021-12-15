#ifndef INC_MYLIBRARY_H_
#define INC_MYLIBRARY_H_

#include "main.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern UART_HandleTypeDef huart3;
extern UART_HandleTypeDef huart5;
extern ADC_HandleTypeDef hadc3;
extern UART_HandleTypeDef huart1;
#define ESP_Reset_Pin GPIO_PIN_6
#define ESP_Reset_GPIO_Port GPIOA
#define ESP_ENABLE_Pin GPIO_PIN_5
#define ESP_ENABLE_GPIO_Port GPIOF
#define GET_LOW_BYTE(A) (uint8_t)((A))

#define GET_HIGH_BYTE(A) (uint8_t)((A) >> 8)

typedef enum {
	IDLE,
	LEFT,
	RIGHT,
	FOWARD,
	FORWARD_LEFT,
	FORWARD_RIGHT,
	BACKWARD,
	BACKWARD_LEFT,
	BACKWARD_RIGHT
} DIRECTIONS;
float batteryVoltage;
uint8_t buffer[2000];
uint16_t buffer_index, timeout, messageHandlerFlag, netTimeout, value1;
#define wifi_uart &huart3
#define pc_uart &huart1
#define servos_uart &huart5
#define motor_ratio(A) (int)(A / 100.0 * 5000)
int percent;
uint8_t speed;
uint32_t safeCounter;
int resetTime;
int handle;
void SysTickEnable();
void SysTickDisable();


void ESP_RESET();
void ESP_Nodemcu_Init();
void ESP_Clear_Buffer();
uint8_t string_compare(char array1[], char array2[], uint16_t length);
int string_contains(char bufferArray[], char searchedString[], uint16_t length);
void messageHandler();
void sendData();
void controlArm();
void moveServos(uint8_t* servos, uint32_t* angles, uint8_t length);
void resetServos();
float readBattery();
void setSpeed(int speed);
uint32_t HAL_GetTick(void);

#endif /* INC_MYLIBRARY_H_ */

