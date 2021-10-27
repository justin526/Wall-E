#ifndef INC_MYLIBRARY_H_
#define INC_MYLIBRARY_H_

#include "main.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern UART_HandleTypeDef huart2;
extern UART_HandleTypeDef huart3;
extern UART_HandleTypeDef huart6;
extern ADC_HandleTypeDef hadc1;

#define ESP_Reset_Pin GPIO_PIN_4
#define ESP_Reset_GPIO_Port GPIOB
#define ESP_ENABLE_Pin GPIO_PIN_5
#define ESP_ENABLE_GPIO_Port GPIOB
#define GET_LOW_BYTE(A) (uint8_t)((A))

#define GET_HIGH_BYTE(A) (uint8_t)((A) >> 8)
//#define TriggerDuration 2
//#define Steering_PWM_Channel	TIM_CHANNEL_1
//#define Motor_PWM_Channel		TIM_CHANNEL_2

//uint16_t distance, triggerTime, sensor, d[5];
//GPIO_TypeDef *triggerPorts[5];
//uint16_t triggerPins[5];
//GPIO_TypeDef *echoPorts[5];
//uint16_t echoPins[5];
float batteryVoltage;
//uint32_t ADC_Value;
uint8_t buffer[2000];
uint16_t buffer_index, timeout, messageHandlerFlag, netTimeout, value1;
#define wifi_uart &huart3
#define pc_uart &huart2
#define servos_uart &huart6
//uint8_t oneSecondFlag;
//float percent;
//uint8_t speed;
uint32_t safeCounter;
int handle;
int resetTime;

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
void controlArm();
void moveServos(uint8_t* servos, uint32_t* angles, uint8_t length);
void resetServos();
float readBattery();
//void setSpeed(int position);
//void halt();
//void stopMotors();
//void drivingAssistance();
uint32_t HAL_GetTick(void);

#endif /* INC_MYLIBRARY_H_ */

