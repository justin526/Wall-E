#include "myLibrary.h"

uint8_t buffer[2000];
uint16_t buffer_index = 0, timeout = 0, messageHandlerFlag = 0, netTimeout = 0, value1 = 0;
uint8_t speed = 0;
int handle = 0;
uint32_t safeCounter = 0;


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
	HAL_UART_Transmit(wifi_uart, (uint8_t*)"wifi.sta.config(\"Mohamed\", \"12345678\")\r\n", strlen("wifi.sta.config(\"Mohamed\", \"12345678\")\r\n"), 100);
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
	resetTime = 5;
}

void ESP_Clear_Buffer()
{
	memset(buffer, 0, 2000);
	buffer_index = 0;
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
	if((position = string_contains((char*)buffer, "SP", buffer_index))!= -1)
	{
//		if (Vbatt2 > 14)
//        HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, 1);

		controlArm();
		resetServos();
//
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR1 = 0;
		TIM2->CCR2 = 0;
		TIM3->CCR1 = 0;
		TIM3->CCR2 = 0;
	}
	else if((position = string_contains((char*)buffer, "F-", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = motor_ratio(speed);
		TIM2->CCR1 = 0;
		TIM3->CCR2 = motor_ratio(speed);
		TIM3->CCR1 = 0;
//		memset(outputString, 0, 100);
//		sprintf(outputString, "Battery: %d%%\n", motor_ratio(speed));
//		HAL_UART_Transmit(pc_uart, (uint8_t*)outputString, strlen(outputString), 100);
	}else if((position = string_contains((char*)buffer, "B-", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = 0;
		TIM2->CCR1 = motor_ratio(speed);
		TIM3->CCR2 = 0;
		TIM3->CCR1 = motor_ratio(speed);
	}else if((position = string_contains((char*)buffer, "-R", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = motor_ratio(speed);
		TIM2->CCR1 = 0;
		TIM3->CCR2 = 0;
		TIM3->CCR1 = motor_ratio(speed);
	}else if((position = string_contains((char*)buffer, "-L", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = 0;
		TIM2->CCR1 = motor_ratio(speed);
		TIM3->CCR2 = motor_ratio(speed);
		TIM3->CCR1 = 0;
	}else if((position = string_contains((char*)buffer, "FR", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = motor_ratio(speed);
		TIM2->CCR1 = 0;
		TIM3->CCR2 = 0;
		TIM3->CCR1 = 0;
	}else if((position = string_contains((char*)buffer, "FL", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = 0;
		TIM2->CCR1 = 0;
		TIM3->CCR2 = motor_ratio(speed);
		TIM3->CCR1 = 0;
	}else if((position = string_contains((char*)buffer, "BR", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = 0;
		TIM2->CCR1 = motor_ratio(speed);
		TIM3->CCR2 = 0;
		TIM3->CCR1 = 0;
	}else if((position = string_contains((char*)buffer, "BL", buffer_index)) != -1)
	{
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 1);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 1);
		speed = atoi((char*)&buffer[position + 2]);
		TIM2->CCR2 = 0;
		TIM2->CCR1 = 0;
		TIM3->CCR2 = 0;
		TIM3->CCR1 = motor_ratio(speed);
	}else if((position = string_contains((char*)buffer, "--", buffer_index)) != -1)
	{
//		HAL_UART_Transmit(pc_uart, "Test\r\n", strlen("Test\r\n"), 1000);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_15, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, 0);
//		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, 0);
		speed = atoi((char*)&buffer[position + 3]);
		TIM2->CCR2 = 0;
		TIM2->CCR1 = 0;
		TIM3->CCR2 = 0;
		TIM3->CCR1 = 0;
	}
	handle = 0;

	ESP_Clear_Buffer();
	__HAL_UART_ENABLE_IT(wifi_uart, UART_IT_RXNE);
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
	  angles[1] = 700;
	  //600 down straight
	  //1500 right angle

	  // Mid-arm servo
	  angles[2] = 1000;
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

	  angles[2] = 1500;
	  moveServos(servos, angles, length);
	  angles[3] = 1500;
	  moveServos(servos, angles, length);
	  angles[1] = 1500;
	  angles[3] = 1000;
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
	HAL_UART_Transmit(servos_uart, data, 7 + (length * 3), time + 250);
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
