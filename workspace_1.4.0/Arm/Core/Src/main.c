/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define GET_LOW_BYTE(A) (uint8_t)((A))

#define GET_HIGH_BYTE(A) (uint8_t)((A) >> 8)
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */
void moveServos(uint8_t* servoNum, uint32_t* angles, uint8_t length);
void resetServos();
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* A function that moves the servos defined in servoNum to their corresponding index in angles.
 * The parameters of values to send out are based on:
 * 	https://www.dropbox.com/sh/ykbn480cpidmmej/AACul8lJTQXZdX2APnYCorRca?dl=0&preview=LSC+Series+Servo+Controller+Communication+Protocol+V1.2.pdf
 *
 * servoNum: Array of servo ID values. This doesn't need to be 6 long, just put the values you want to move
 * 		- Servo 1 doesn't work
 * 		- Servo 2 is the claw rotation
 * 		- Servo 3 is the fine vertical pivot
 * 		- Servo 4 is the medium vertical pivot
 * 		- Servo 5 is the large vertical pivot
 * 		- Servo 6 controls the claw's pinching
 *
 * 	angles: Array of angles for each corresponding servo in servoNum
 * 		- 1000 = bottom of range
 * 		- 2000 = top of range
 *
 * 	length: length of both servoNum array and angles array
 */
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
	HAL_UART_Transmit(&huart2, data, 7 + (length * 3), time + 250);
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
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

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



  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

//	  moveServos(servos, angles, length);
//	  HAL_Delay(3000);
//	  angles[4] = angles[4] == 1500 ? 1500 : 2000;
//	  moveServos(servos, angles, length);
//	  HAL_Delay(3000);
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 9600;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
