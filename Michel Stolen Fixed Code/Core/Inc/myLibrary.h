#ifndef INC_MYLIBRARY_H_
#define INC_MYLIBRARY_H_

#include "main.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern UART_HandleTypeDef huart2;
extern UART_HandleTypeDef huart3;

#define ESP_Reset_Pin GPIO_PIN_4
#define ESP_Reset_GPIO_Port GPIOB
#define ESP_ENABLE_Pin GPIO_PIN_5
#define ESP_ENABLE_GPIO_Port GPIOB

//#define TriggerDuration 2
//#define Steering_PWM_Channel	TIM_CHANNEL_1
//#define Motor_PWM_Channel		TIM_CHANNEL_2

//uint16_t distance, triggerTime, sensor, d[5];
//GPIO_TypeDef *triggerPorts[5];
//uint16_t triggerPins[5];
//GPIO_TypeDef *echoPorts[5];
//uint16_t echoPins[5];
//float batteryVoltage;
//uint32_t ADC_Value;
uint8_t buffer[2000];
uint16_t buffer_index, timeout, messageHandlerFlag, netTimeout;
#define wifi_uart &huart3
#define pc_uart &huart2
//uint8_t oneSecondFlag;
//float percent;
//uint8_t speed;
uint32_t safeCounter;

//void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc);
void SysTickEnable();
void SysTickDisable();
//uint16_t measureDistance(GPIO_TypeDef *triggerPort, uint16_t triggerPin, GPIO_TypeDef *echoPort, uint16_t echoPin);

void ESP_RESET();
void ESP_Server_Init();
void ESP_Clear_Buffer();
//void calculateBattery();
//void updateScreen();
//void measureDistances();
uint8_t string_compare(char array1[], char array2[], uint16_t length);
int string_contains(char bufferArray[], char searchedString[], uint16_t length);
void messageHandler();
void sendData();
//void setSpeed(int position);
//void halt();
//void stopMotors();
//void drivingAssistance();
uint32_t HAL_GetTick(void);

#endif /* INC_MYLIBRARY_H_ */

