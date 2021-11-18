#include "myLibrary.h"

uint16_t distance = 0, triggerTime = 0, sensor = 0, d[5];
//GPIO_TypeDef *triggerPorts[5] = {Trigger0_GPIO_Port, Trigger1_GPIO_Port, Trigger2_GPIO_Port, Trigger3_GPIO_Port, Trigger4_GPIO_Port};
//uint16_t triggerPins[5] = {Trigger0_Pin, Trigger1_Pin, Trigger2_Pin, Trigger3_Pin, Trigger4_Pin};
//GPIO_TypeDef *echoPorts[5] = {Echo0_GPIO_Port, Echo1_GPIO_Port, Echo2_GPIO_Port, Echo3_GPIO_Port, Echo4_GPIO_Port};
//uint16_t echoPins[5] = {Echo0_Pin, Echo1_Pin, Echo2_Pin, Echo3_Pin, Echo4_Pin};
//float batteryVoltage = 8.4f;
//uint32_t ADC_Value = 0;
uint8_t buffer[2000];
uint16_t buffer_index = 0, timeout = 0, messageHandlerFlag = 0, netTimeout = 0, value1 = 0;
//uint8_t oneSecondFlag = 0;
//float percent = 100;
uint8_t speed = 0;
int handle = 0;
uint32_t safeCounter = 0;
int resetTime = 5;
char outputString[100], cipsend[50], response[300], cipclose[20];

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
	resetTime = 6;
	HAL_GPIO_WritePin(ESP_ENABLE_GPIO_Port, ESP_ENABLE_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(ESP_Reset_GPIO_Port, ESP_Reset_Pin, GPIO_PIN_RESET);
	HAL_Delay(30);
	HAL_GPIO_WritePin(ESP_ENABLE_GPIO_Port, ESP_ENABLE_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(ESP_Reset_GPIO_Port, ESP_Reset_Pin, GPIO_PIN_SET);
	HAL_UART_Transmit(pc_uart, "ESP Reset\r\n", strlen( "ESP Reset\r\n"), 100);
}

void ESP_Nodemcu_Init()
{
	int wait_time = 1000;
	ESP_RESET();
	HAL_Delay(wait_time * 1);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
//	HAL_UART_Transmit(pc_uart, "Test\r\n", strlen( "Test\r\n"), 100);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"wifi.setmode(wifi.STATION)\r\n", strlen("wifi.setmode(wifi.STATION)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"wifi.sta.config(\"MichelCel\", \"michel123\")\r\n", strlen("wifi.sta.config(\"MichelCel\", \"michel123\")\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"wifi.sta.connect()\r\n", strlen("wifi.sta.connect()\r\n"), 100);
	HAL_Delay(wait_time * 2);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "bat = 100\r\n", strlen("bat = 100\r\n"), 1000);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"srv = net.createServer(net.TCP)\r\n", strlen("srv = net.createServer(net.TCP)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "srv:listen(80, function(conn)\r\n", strlen("srv:listen(80, function(conn)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "conn:on(\"receive\", function(sck, payload)\r\n", strlen("conn:on(\"receive\", function(sck, payload)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "print(payload)\r\n", strlen("print(payload)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
//	HAL_UART_Transmit(wifi_uart, "if string.find(payload, \"GET\") ~= nil then\r\n", strlen("if string.find(payload, \"GET\") ~= nil then\r\n"), 100);
//	HAL_Delay(wait_time);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
//	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "sck:send(\"HTTP/1.0 200 OK\\r\\n\Content-Type: text/html\\r\\n\\r\\nBattery: \" .. bat .. \"%\")\r\n", strlen("sck:send(\"HTTP/1.0 200 OK\\r\\nContent-Type: text/html\\r\\n\\r\\nBattery: \" .. bat .. \"%\")\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
//	HAL_UART_Transmit(wifi_uart, "else\r\n", strlen("else\r\n"), 100);
//	HAL_Delay(wait_time);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
//	ESP_Clear_Buffer();
//	HAL_UART_Transmit(wifi_uart, "sck:close()\r\n", strlen("sck:close()\r\n"), 100);
//	HAL_Delay(wait_time);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
//	ESP_Clear_Buffer();
//	HAL_UART_Transmit(wifi_uart, "end\r\n", strlen("end\r\n"), 100);
//	HAL_Delay(wait_time);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
//	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "end)\r\n", strlen("end)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "conn:on(\"sent\", function(sck) sck:close() end)\r\n", strlen("conn:on(\"sent\", function(sck) sck:close() end)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
	HAL_UART_Transmit(wifi_uart, "end)\r\n", strlen("end)\r\n"), 100);
	HAL_Delay(wait_time);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();
}


void ESP_Server_Init()
{
	ESP_RESET();
//	HAL_Delay(1000);
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	HAL_UART_Transmit(pc_uart, "Start\r\n", strlen( "Start\r\n"), 100);
	ESP_Clear_Buffer();
//	huart3.Init.BaudRate = 115200;
//	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIOBAUD=115200\r\n", strlen("AT+CIOBAUD=115200\r\n"), 100);
//	huart3.Init.BaudRate = 115200;

//	HAL_Delay(1000);
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+RST\r\n", strlen("AT+RST\r\n"), 100);
	HAL_Delay(1500);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
//	HAL_UART_Transmit(pc_uart, (uint8_t*"AT+RST\r\n", strlen("AT+RST\r\n"), 100);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWMODE=1\r\n", strlen("AT+CWMODE=1\r\n"), 100);
	HAL_Delay(100);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWDHCP=1,1\r\n", strlen("AT+CWDHCP=1,1\r\n"), 100);
	HAL_Delay(100);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIPMUX=1\r\n", strlen("AT+CIPMUX=1\r\n"), 100);
	HAL_Delay(100);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();

	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIPSERVER=1,80\r\n", strlen("AT+CIPSERVER=1,80\r\n"), 100);
	HAL_Delay(100);
//	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	ESP_Clear_Buffer();

	//Change your WiFi SSID credentials below
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWJAP=\"MichelCel\",\"michel123\"\r\n", strlen("AT+CWJAP=\"MichelCel\",\"MichelCel\"\r\n"), 100);
	HAL_UART_Transmit(pc_uart, "Connected to WiFi\r\n", strlen( "Connected to WiFi\r\n"), 100);
	HAL_Delay(2000);
//	HAL_UART_Transmit(pc_uart, buffer, 1000, 1000);
//	ESP_Clear_Buffer();
//	HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CIFSR\r\n", strlen("AT+CIFSR\r\n"), 100);
//	HAL_Delay(2000);
	resetTime = 2;
}

void ESP_Clear_Buffer()
{
	memset(buffer, 0, 2000);
	buffer_index = 0;
}

void calculateBattery()
{
	percent = ((batteryVoltage-6.0f) / 2.35f)*100.0f;
	if(percent > 100.0f)
		percent = 100.0f;
}

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
	while (buffer[position] != ',' && position != 0) position--;
	if (position != 0)
		return (int) buffer[position-1] -48;
	return 0;
}

void messageHandler()
{
	__HAL_UART_DISABLE_IT(wifi_uart, UART_IT_RXNE);
	int position = 0;
	handle = 1;
	HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 1000);
	char string3[20];
//	calculateBattery();
	float value = percent;
//	sprintf(string3, "bat = %d\r\n", (int)percent);
	sprintf(string3, "bat = %d\r\n", percent);
	HAL_UART_Transmit(wifi_uart, string3, strlen(string3), 1000);
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, 0);
	if((position = string_contains((char*)buffer, "GET", buffer_index)) != -1)
	{
		int link = getLink(position);
//		sendData(link);
//		HAL_UART_Transmit(pc_uart, buffer, strlen(buffer), 100);
//		if (string_contains((char*)buffer, "/ledon", buffer_index) != -1)
//			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		else if (string_contains((char*)buffer, "/ledoff", buffer_index) != -1)
//			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
	}
	else if((position = string_contains((char*)buffer, "SPACE", buffer_index))!= -1)
	{
//		if (Vbatt2 > 14)
        HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, 1);

//		controlArm();
//		resetServos();
//
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = 0;
//		TIM1->CCR2 = 0;
//		TIM1->CCR3 = 0;
//		TIM1->CCR4 = 0;
	}
	else if((position = string_contains((char*)buffer, "F-", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = motor_ratio(speed);
//		TIM1->CCR2 = 0;
//		TIM1->CCR3 = motor_ratio(speed);
//		TIM1->CCR4 = 0;
//		memset(outputString, 0, 100);
//		sprintf(outputString, "Battery: %d%%\n", motor_ratio(speed));
//		HAL_UART_Transmit(pc_uart, (uint8_t*)outputString, strlen(outputString), 100);
	}else if((position = string_contains((char*)buffer, "B-", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = 0;
//		TIM1->CCR2 = motor_ratio(speed);
//		TIM1->CCR3 = 0;
//		TIM1->CCR4 = motor_ratio(speed);
	}else if((position = string_contains((char*)buffer, "-R", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = motor_ratio(speed);
//		TIM1->CCR2 = 0;
//		TIM1->CCR3 = 0;
//		TIM1->CCR4 = motor_ratio(speed);
	}else if((position = string_contains((char*)buffer, "-L", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = 0;
//		TIM1->CCR2 = motor_ratio(speed);
//		TIM1->CCR3 = motor_ratio(speed);
//		TIM1->CCR4 = 0;
	}else if((position = string_contains((char*)buffer, "FR", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = motor_ratio(speed);
//		TIM1->CCR2 = 0;
//		TIM1->CCR3 = 0;
//		TIM1->CCR4 = 0;
	}else if((position = string_contains((char*)buffer, "FL", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = 0;
//		TIM1->CCR2 = 0;
//		TIM1->CCR3 = motor_ratio(speed);
//		TIM1->CCR4 = 0;
	}else if((position = string_contains((char*)buffer, "BR", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = 0;
//		TIM1->CCR2 = motor_ratio(speed);
//		TIM1->CCR3 = 0;
//		TIM1->CCR4 = 0;
	}else if((position = string_contains((char*)buffer, "BL", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
//		speed = atoi((char*)&buffer[position + 2]);
//		TIM1->CCR1 = 0;
//		TIM1->CCR2 = 0;
//		TIM1->CCR3 = 0;
//		TIM1->CCR4 = motor_ratio(speed);
	}else if((position = string_contains((char*)buffer, "--", buffer_index)) != -1)
	{
		HAL_UART_Transmit(pc_uart, "Test\r\n", strlen("Test\r\n"), 1000);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
//		speed = atoi((char*)&buffer[position + 3]);
//		TIM1->CCR1 = 0;
//		TIM1->CCR2 = 0;
//		TIM1->CCR3 = 0;
//		TIM1->CCR4 = 0;
	}else if(string_contains((char*)buffer, "+CWJAP:", buffer_index) != -1
			&& (string_contains((char*)buffer, "FAIL", buffer_index) != -1
			|| string_contains((char*)buffer, "DISCONNECT", buffer_index) != -1))
	{
		//Change your WiFi SSID credentials below
//		HAL_UART_Transmit(wifi_uart, (uint8_t*)"AT+CWJAP=\"MichelCel\",\"michel123\"\r\n", strlen("AT+CWJAP=\"MichelCel\",\"michel123\"\r\n"), 100);
	}
	handle = 0;

	ESP_Clear_Buffer();
	__HAL_UART_ENABLE_IT(wifi_uart, UART_IT_RXNE);
}

void sendData(int link)
{
	memset(outputString, 0, 100);
	memset(cipsend, 0, 50);
	memset(response, 0, 300);
	memset(cipclose, 0, 20);

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

void controlArm()
{
	uint8_t length = 5;
	  uint8_t servos[length];
	  uint32_t angles[length];
	  for (int i = 0; i < length; i++)
	  {
		  servos[i] = i + 2;
		  angles[i] = 1500;
	  }

	  moveServos(servos, angles, length);
	  // Claw pivot servo - doesn't ever need to change
	  angles[0] = 1500;

	  //Top arm servo -
	  angles[1] = 1000;
	  //600 down straight
	  //1500 right angle

	  // Mid-arm servo
	  angles[2] = 400;
	  // 400 forwards down

	  // Base servo
	  angles[3] = 2200;
	  //2200 forwards down - BE CAREFUL THIS PUTS IT REALLY LOW
	  //800 backwards down

	  // Claw
	  // 1500 open completely
	  // 2500 closed with contact
	  angles[4] = 1500;
	  /* USER CODE END 2 */

	  /* Infinite loop */
	  /* USER CODE BEGIN WHILE */
	  moveServos(servos, angles, length);

	  //Grab the object
	  angles[4] = 2000;
	  moveServos(servos, angles, length);

	  //Move the arm backwards
	  angles[3] = 1500;
	  moveServos(servos, angles, length);
	  angles[1] = 1500;
	  angles[2] = 1500;
	  angles[3] = 1500;
	  angles[4] = 2000;
	  moveServos(servos, angles, length);

	  //Drop the item
	  angles[4] = 1500;
	  moveServos(servos, angles, length);
}

void moveServos(uint8_t* servos, uint32_t* angles, uint8_t length)
{
	uint16_t time = 1000; //default time because why not

	uint8_t data[7 + (length * 3)];
	data[0] = 0x55; //header 1
	data[1] = 0x55; //header 2
	data[2] = 0x05 + (length * 3); //length
	data[3] = 0x03; //cmd
	data[4] = length; //# servos
	data[5] = GET_LOW_BYTE(time); //lower 8 time
	data[6] = GET_HIGH_BYTE(time); //upper 8 time
	for (int i = 0; i < length; i++)
	{
		data[7 + (i * 3)] = servos[i];
		data[8 + (i * 3)] = GET_LOW_BYTE(angles[i]);
		data[9 + (i * 3)] = GET_HIGH_BYTE(angles[i]);
	}
//	HAL_UART_Transmit(servos_uart, data, 7 + (length * 3), time + 250);
	HAL_Delay(3000);
}

void resetServos()
{
	uint8_t length = 5;
	uint8_t servos[length];
	uint32_t angles[length];
	for(int i = 0; i < length; i++)
	{
		servos[i] = i + 2;
		angles[i] = 1500;
	}
//	angles[1] = 600;
	angles[4] = 2000;
	moveServos(servos, angles, length);
}

//uint32_t HAL_GetTick(void)
//{
////	if(timeout == 1)
////		safeCounter++;
//	if(safeCounter > resetTime)
//	{
//		safeCounter = 0;
//		/*uwTick += 50;
//		stopMotors();
//		SysTickDisable();
//		HAL_TIM_Base_Stop_IT(&htim4);//58us
//		HAL_TIM_Base_Start_IT(&htim3);//20ms
//		SysTickEnable();
//		__HAL_UART_ENABLE_IT(wifi_uart, UART_IT_RXNE);*/
//		NVIC_SystemReset();
//		return uwTick;
//	}
//  return uwTick;
//}
