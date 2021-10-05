#include "myLibrary.h"

uint16_t distance = 0, triggerTime = 0, sensor = 0, d[5];
//GPIO_TypeDef *triggerPorts[5] = {Trigger0_GPIO_Port, Trigger1_GPIO_Port, Trigger2_GPIO_Port, Trigger3_GPIO_Port, Trigger4_GPIO_Port};
//uint16_t triggerPins[5] = {Trigger0_Pin, Trigger1_Pin, Trigger2_Pin, Trigger3_Pin, Trigger4_Pin};
//GPIO_TypeDef *echoPorts[5] = {Echo0_GPIO_Port, Echo1_GPIO_Port, Echo2_GPIO_Port, Echo3_GPIO_Port, Echo4_GPIO_Port};
//uint16_t echoPins[5] = {Echo0_Pin, Echo1_Pin, Echo2_Pin, Echo3_Pin, Echo4_Pin};
//float batteryVoltage = 8.4f;
//uint32_t ADC_Value = 0;
uint8_t buffer[2000];
uint16_t buffer_index = 0, timeout = 0, messageHandlerFlag = 0, netTimeout = 0;
//uint8_t oneSecondFlag = 0;
float percent = 100;
//uint8_t speed = 0;
uint32_t safeCounter = 0;
char outputString[100], cipsend[50], response[300], cipclose[14];
//void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
//{
//	ADC_Value = HAL_ADC_GetValue(&hadc1);
//	float currentVoltage = ((float)ADC_Value/4095.0f) * 3.3f * 3.0f * bulgarianVoltageConstant;
//	batteryVoltage = 0.99f*batteryVoltage + 0.01f*currentVoltage;
//	if((int)percent <= 0)
//	{
//		halt();
//	}
//}

void SysTickEnable()
{
	__disable_irq();
	SysTick->CTRL |= (SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk);
	__enable_irq();
}

void SysTickDisable()
{
	__disable_irq();
	SysTick->CTRL &= ~(SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk);
	__enable_irq();
}

void ESP_RESET()
{
	HAL_GPIO_WritePin(ESP_ENABLE_GPIO_Port, ESP_ENABLE_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(ESP_Reset_GPIO_Port, ESP_Reset_Pin, GPIO_PIN_RESET);
	HAL_Delay(30);
	HAL_GPIO_WritePin(ESP_ENABLE_GPIO_Port, ESP_ENABLE_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(ESP_Reset_GPIO_Port, ESP_Reset_Pin, GPIO_PIN_SET);
	HAL_UART_Transmit(pc_uart, "ESP Reset\r\n", strlen( "ESP Reset\r\n"), 100);
}

void ESP_Server_Init()
{
	ESP_RESET();
	HAL_Delay(2000);
	HAL_UART_Transmit(pc_uart, "Start\r\n", strlen( "Start\r\n"), 100);
	ESP_Clear_Buffer();
//	huart3.Init.BaudRate = 115200;
//	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIOBAUD=115200\r\n", strlen("AT+CIOBAUD=115200\r\n"), 100);
//	huart3.Init.BaudRate = 115200;

//	HAL_Delay(1000);
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+RST\r\n", strlen("AT+RST\r\n"), 100);
	HAL_Delay(1500);
//	HAL_UART_Transmit(pc_uart, (uint8_t*)"AT+RST\r\n", strlen("AT+RST\r\n"), 100);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWMODE=1\r\n", strlen("AT+CWMODE=1\r\n"), 100);
	HAL_Delay(2000);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWDHCP=1,1\r\n", strlen("AT+CWDHCP=1,1\r\n"), 100);
	HAL_Delay(2000);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIPMUX=1\r\n", strlen("AT+CIPMUX=1\r\n"), 100);
	HAL_Delay(2000);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIPSERVER=1,80\r\n", strlen("AT+CIPSERVER=1,80\r\n"), 100);
	HAL_Delay(2000);
	ESP_Clear_Buffer();

	//Change your WiFi SSID credentials below
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWJAP=\"MichelCel\",\"michel123\"\r\n", strlen("AT+CWJAP=\"MichelCel\",\"MichelCel\"\r\n"), 100);
	HAL_UART_Transmit(pc_uart, "Connected to WiFi\r\n", strlen( "Connected to WiFi\r\n"), 100);
//	HAL_Delay(2000);
//	ESP_Clear_Buffer();
//	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIFSR\r\n", strlen("AT+CIFSR\r\n"), 100);
}

void ESP_Clear_Buffer()
{
	memset(buffer, 0, 2000);
	buffer_index = 0;
}

//void calculateBattery()
//{
//	percent = ((batteryVoltage-6.0f) / 2.35f)*100.0f;
//	if(percent > 100.0f)
//		percent = 100.0f;
//}

uint8_t string_compare(char array1[], char array2[], uint16_t length)
{
	 uint16_t comVAR=0, i;
	 for(i=0;i<length;i++)
	   	{
	   		  if(array1[i]==array2[i])
	   	  		  comVAR++;
	   	  	  else comVAR=0;
	   	}
	 if (comVAR==length)
		 	return 1;
	 else 	return 0;
}

int string_contains(char bufferArray[], char searchedString[], uint16_t length)
{
	uint8_t result=0;
	for(uint16_t i=0; i<length; i++)
	{
		result = string_compare(&bufferArray[i], &searchedString[0], strlen(searchedString));
		if(result == 1)
			return i;
	}
	return -1;
}

int getLink(int position)
{
	while (buffer[position] != ',') position--;
	return (int) buffer[position-1] -48;
}

void messageHandler()
{
	__HAL_UART_DISABLE_IT(wifi_uart, UART_IT_RXNE);
	int position = 0;
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	if((position = string_contains((char*)buffer, "GET", buffer_index)) != -1)
	{
		int link = getLink(position);
		sendData(link);
//		HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 100);
//		if (string_contains((char*)buffer, "/ledon", buffer_index) != -1)
//			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		else if (string_contains((char*)buffer, "/ledoff", buffer_index) != -1)
//			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
	}else if((position = string_contains((char*)buffer, "F-", buffer_index)) != -1)
	{
//		HAL_UART_Transmit(pc_uart, "Success\r\n", strlen("Success\r\n"), 100);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 1);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 0);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 0);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 0);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
	}else if((position = string_contains((char*)buffer, "B-", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 1);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 0);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 0);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if((position = string_contains((char*)buffer, "-R", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 0);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 1);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 0);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if((position = string_contains((char*)buffer, "-L", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 0);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 0);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 1);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if((position = string_contains((char*)buffer, "FR", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 1);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 0);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 1);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 0);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if((position = string_contains((char*)buffer, "FL", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 1);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 0);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 0);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 1);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if((position = string_contains((char*)buffer, "BR", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 1);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 1);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 0);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if((position = string_contains((char*)buffer, "BL", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 1);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 0);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 1);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if((position = string_contains((char*)buffer, "--", buffer_index)) != -1)
	{
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		setSpeed(position);
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 0);
//		HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 0);
//		HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 0);
//		if(buffer[position+2] == 'T')
//			drivingAssistance();
	}else if(string_contains((char*)buffer, "+CWJAP:", buffer_index) != -1
			&& (string_contains((char*)buffer, "FAIL", buffer_index) != -1
			|| string_contains((char*)buffer, "DISCONNECT", buffer_index) != -1))
	{
		//Change your WiFi SSID credentials below
		HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWJAP=\"MichelCel\",\"michel123\"\r\n", strlen("AT+CWJAP=\"MichelCel\",\"michel123\"\r\n"), 100);
	}
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	__HAL_UART_ENABLE_IT(wifi_uart, UART_IT_RXNE);
}

void sendData(int link)
{
	memset(outputString, 0, 100);
	memset(cipsend, 0, 50);
	memset(response, 0, 300);
	memset(cipclose, 0, 14);

	sprintf(outputString, "Battery: %i%%\n", (int)rand() % 100);
	sprintf(response, "HTTP/1.1 200 OK\r\nContent-Length: %i\r\nContent-Type: text/plain\r\n\r\n%s", strlen(outputString), outputString);
	sprintf(cipsend, "AT+CIPSEND=%d,%i\r\n", link, strlen(response));
	sprintf(cipclose, "AT+CIPCLOSE=%d\r\n", link);

	HAL_UART_Transmit(wifi_uart, (uint8_t*)cipsend, strlen(cipsend), 100);
	HAL_Delay(50);
	HAL_UART_Transmit(wifi_uart, (uint8_t*)response, strlen(response), 100);
	HAL_Delay(50);
	HAL_UART_Transmit(wifi_uart, (uint8_t*)cipclose, strlen(cipclose), 100);
//	HAL_UART_Transmit(pc_uart, (uint8_t*)outputString, strlen(outputString), 100);
}

//void setSpeed(int position)
//{
//	speed = atoi((char*)&buffer[position + 3]);
//	__HAL_TIM_SET_COMPARE(&htim3, Motor_PWM_Channel, speed);
//}

//void halt()
//{
//	HAL_ADC_Stop_IT(&hadc1);
//	HAL_TIM_Base_Stop_IT(&htim3);//20ms
//	HAL_TIM_Base_Stop_IT(&htim4);//58us
//	__HAL_UART_DISABLE_IT(wifi_uart, UART_IT_RXNE);
//	stopMotors();
//	while(1);
//}

//void stopMotors()
//{
//	__HAL_TIM_SET_COMPARE(&htim3, Steering_PWM_Channel, 255);
//	__HAL_TIM_SET_COMPARE(&htim3, Motor_PWM_Channel, 255);
//	HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//	HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 0);
//	HAL_GPIO_WritePin(Steering_A_GPIO_Port, Steering_A_Pin, 0);
//	HAL_GPIO_WritePin(Steering_B_GPIO_Port, Steering_B_Pin, 0);
//}

//void drivingAssistance()
//{
//	float factor = speed/255.0f;
//	if(d[1] < (100.0f * factor)
//	|| d[2] < (100.0f * factor)
//	|| d[3] < (100.0f * factor))
//	{
//		HAL_GPIO_WritePin(Motor_A_GPIO_Port, Motor_A_Pin, 0);
//		HAL_GPIO_WritePin(Motor_B_GPIO_Port, Motor_B_Pin, 1);
//	}
//}

uint32_t HAL_GetTick(void)
{
	if(timeout == 1)
		safeCounter++;
	if(safeCounter > 7000000)
	{
		safeCounter = 0;
		/*uwTick += 50;
		stopMotors();
		SysTickDisable();
		HAL_TIM_Base_Stop_IT(&htim4);//58us
		HAL_TIM_Base_Start_IT(&htim3);//20ms
		SysTickEnable();
		__HAL_UART_ENABLE_IT(wifi_uart, UART_IT_RXNE);*/
		NVIC_SystemReset();
		return uwTick;
	}
  return uwTick;
}
