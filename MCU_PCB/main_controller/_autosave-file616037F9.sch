EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L esp-12f:esp-12f IC5
U 1 1 6153B491
P 5400 850
F 0 "IC5" H 6050 1115 50  0000 C CNN
F 1 "esp-12f" H 6050 1024 50  0000 C CNN
F 2 "esp12f" H 6550 950 50  0001 L CNN
F 3 "https://docs.ai-thinker.com/_media/esp8266/docs/esp-12f_product_specification_en.pdf" H 6550 850 50  0001 L CNN
F 4 "ESP-12F ESP8266 Wifi Wireless IoT Board Module , package 1 x ESP8266 Adapter Plate  1pcs" H 6550 750 50  0001 L CNN "Description"
F 5 "3.1" H 6550 650 50  0001 L CNN "Height"
F 6 "Ai-Thinker" H 6550 550 50  0001 L CNN "Manufacturer_Name"
F 7 "esp-12f" H 6550 450 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 6550 350 50  0001 L CNN "Mouser Part Number"
F 9 "" H 6550 250 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 6550 150 50  0001 L CNN "Arrow Part Number"
F 11 "" H 6550 50  50  0001 L CNN "Arrow Price/Stock"
	1    5400 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5300 5100 5350
NoConn ~ 5100 5450
NoConn ~ 5100 5550
NoConn ~ 5100 5650
NoConn ~ 5100 5750
NoConn ~ 5900 5950
$Comp
L Device:C C24
U 1 1 6156B43A
P 5400 6800
F 0 "C24" H 5515 6846 50  0000 L CNN
F 1 "100nF" H 5515 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5438 6650 50  0000 C CNN
F 3 "~" H 5400 6800 50  0001 C CNN
	1    5400 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 6156C5A8
P 4950 6800
F 0 "C23" H 5065 6846 50  0000 L CNN
F 1 "10uF" H 5065 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4988 6650 50  0000 C CNN
F 3 "~" H 4950 6800 50  0001 C CNN
	1    4950 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6650 5400 6650
Wire Wire Line
	4950 6650 4950 6450
Connection ~ 4950 6650
Text Label 4950 6450 0    50   ~ 0
5V
Text Label 10950 6250 0    50   ~ 0
GND
$Comp
L power:GND #PWR0126
U 1 1 615791C3
P 10950 6250
F 0 "#PWR0126" H 10950 6000 50  0001 C CNN
F 1 "GND" H 10955 6077 50  0000 C CNN
F 2 "" H 10950 6250 50  0001 C CNN
F 3 "" H 10950 6250 50  0001 C CNN
	1    10950 6250
	1    0    0    -1  
$EndComp
Text Label 4950 6950 3    50   ~ 0
GND
Text Label 5400 6950 3    50   ~ 0
GND
$Comp
L Device:R R7
U 1 1 615DD82A
P 8850 3400
F 0 "R7" H 8920 3446 50  0000 L CNN
F 1 "470" H 8920 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 3400 50  0000 C CNN
F 3 "~" H 8850 3400 50  0001 C CNN
	1    8850 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 615DE183
P 8850 3850
F 0 "D4" V 8889 3733 50  0000 R CNN
F 1 "LED" V 8798 3733 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8850 3850 50  0001 C CNN
F 3 "~" H 8850 3850 50  0001 C CNN
	1    8850 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 3250 8850 2800
Text Label 8850 2800 0    50   ~ 0
3V3
Wire Wire Line
	8850 3550 8850 3650
$Comp
L Device:R R8
U 1 1 615E2601
P 8850 4350
F 0 "R8" H 8920 4396 50  0000 L CNN
F 1 "470" H 8920 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 4350 50  0000 C CNN
F 3 "~" H 8850 4350 50  0001 C CNN
	1    8850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4000 8850 4200
$Comp
L Switch:SW_Push SW2
U 1 1 615E55B3
P 9100 4700
F 0 "SW2" V 9054 4848 50  0000 L CNN
F 1 "KEY_USER" V 9145 4848 50  0000 L CNN
F 2 "pushbutton:SW_147873-2" H 9100 4900 50  0000 C CNN
F 3 "~" H 9100 4900 50  0001 C CNN
	1    9100 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 3650 8550 3650
Connection ~ 8850 3650
Wire Wire Line
	8850 3650 8850 3700
Text Label 8550 3650 2    50   ~ 0
GPIO16
Wire Wire Line
	8850 4500 9100 4500
$Comp
L Device:R R9
U 1 1 615EA1F0
P 9400 4350
F 0 "R9" H 9470 4396 50  0000 L CNN
F 1 "0(NC)" H 9470 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 4350 50  0000 C CNN
F 3 "~" H 9400 4350 50  0001 C CNN
	1    9400 4350
	1    0    0    -1  
$EndComp
Connection ~ 9100 4500
Wire Wire Line
	9100 4500 9400 4500
Wire Wire Line
	9400 4200 9400 4000
Wire Wire Line
	9400 4000 9600 4000
Text Label 9600 4000 0    50   ~ 0
nRST
$Comp
L Device:R R10
U 1 1 615F113F
P 10500 4300
F 0 "R10" H 10570 4346 50  0000 L CNN
F 1 "470" H 10570 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10430 4300 50  0000 C CNN
F 3 "~" H 10500 4300 50  0001 C CNN
	1    10500 4300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 615F1B1E
P 10500 4650
F 0 "SW3" V 10454 4798 50  0000 L CNN
F 1 "KEY_FLASH" V 10545 4798 50  0000 L CNN
F 2 "pushbutton:SW_147873-2" H 10500 4850 50  0000 C CNN
F 3 "~" H 10500 4850 50  0001 C CNN
	1    10500 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 4150 10500 3800
Wire Wire Line
	10500 3800 10300 3800
Text Label 10300 3800 2    50   ~ 0
GPIO0
Text Label 10500 4850 3    50   ~ 0
GND
Wire Wire Line
	5400 850  5200 850 
Text Label 5200 850  0    50   ~ 0
nRST
Wire Wire Line
	5400 950  5200 950 
Text Label 5200 950  0    50   ~ 0
ADC
Wire Wire Line
	5400 1050 5200 1050
Text Label 5200 1050 0    50   ~ 0
EN
Text Label 4750 700  0    50   ~ 0
3V3
$Comp
L Device:CP1 C18
U 1 1 616121AA
P 4750 2050
F 0 "C18" H 4865 2096 50  0000 L CNN
F 1 "100uF" H 4865 2005 50  0000 L CNN
F 2 "EEEHA0J101WR:CAP_EEEHA0J101WR" H 4750 2050 50  0000 C CNN
F 3 "~" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
Text Label 4750 2200 3    50   ~ 0
GND
$Comp
L Device:R R17
U 1 1 6161B737
P 1400 950
F 0 "R17" V 1193 950 50  0000 C CNN
F 1 "12K" V 1284 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 950 50  0000 C CNN
F 3 "~" H 1400 950 50  0001 C CNN
	1    1400 950 
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 6161C48F
P 1400 1250
F 0 "R19" V 1193 1250 50  0000 C CNN
F 1 "12K" V 1284 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 1250 50  0000 C CNN
F 3 "~" H 1400 1250 50  0001 C CNN
	1    1400 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 61621E60
P 1400 1550
F 0 "R20" V 1193 1550 50  0000 C CNN
F 1 "12K" V 1284 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 1550 50  0000 C CNN
F 3 "~" H 1400 1550 50  0001 C CNN
	1    1400 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 950  950  950 
Wire Wire Line
	950  950  950  800 
Text Label 950  800  0    50   ~ 0
3V3
Wire Wire Line
	1250 1250 950  1250
Wire Wire Line
	1250 1550 950  1550
Wire Wire Line
	950  1550 950  1250
Wire Wire Line
	1550 1550 1800 1550
$Comp
L Device:C C19
U 1 1 616533B8
P 1950 1550
F 0 "C19" V 1698 1550 50  0000 C CNN
F 1 "470pF" V 1789 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1988 1400 50  0000 C CNN
F 3 "~" H 1950 1550 50  0001 C CNN
	1    1950 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1550 2250 1550
Text Label 2250 1550 0    50   ~ 0
GND
Wire Wire Line
	1550 1250 1800 1250
Text Label 1800 1250 0    50   ~ 0
EN
Text Label 1650 1550 0    50   ~ 0
nRST
Wire Wire Line
	1550 950  1800 950 
Text Label 1800 950  0    50   ~ 0
GPIO0
Wire Wire Line
	5400 1550 4750 1550
Connection ~ 4750 1550
Wire Wire Line
	4750 1550 4750 700 
Wire Wire Line
	4750 1550 4750 1900
Text Label 7000 1850 0    50   ~ 0
TXD0
Wire Wire Line
	6700 1850 7500 1850
Text Label 6950 1750 0    50   ~ 0
RXD0
Wire Wire Line
	6700 1750 7250 1750
Text Label 6950 1450 0    50   ~ 0
GPIO0
Wire Wire Line
	6700 1450 7250 1450
Wire Wire Line
	6700 1150 6800 1150
Text Label 6800 1150 0    50   ~ 0
GND
$Comp
L Device:R R13
U 1 1 616FEA42
P 4650 5950
F 0 "R13" V 4443 5950 50  0000 C CNN
F 1 "470" V 4534 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 5950 50  0001 C CNN
F 3 "~" H 4650 5950 50  0001 C CNN
	1    4650 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 616FFC38
P 4650 6250
F 0 "R14" V 4443 6250 50  0000 C CNN
F 1 "470" V 4534 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 6250 50  0001 C CNN
F 3 "~" H 4650 6250 50  0001 C CNN
	1    4650 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 6250 5500 6650
Wire Wire Line
	5100 5950 4800 5950
Text Label 4450 5950 2    50   ~ 0
TXD0
Wire Wire Line
	4800 6250 4950 6250
Wire Wire Line
	4950 6250 4950 6050
Wire Wire Line
	4950 6050 5100 6050
Wire Wire Line
	5900 5250 6050 5250
Text Label 6050 5250 0    50   ~ 0
XO
Wire Wire Line
	5900 5450 6050 5450
Text Label 6050 5450 0    50   ~ 0
XI
Connection ~ 5400 6650
Wire Wire Line
	4950 6650 5400 6650
$Comp
L Oscillator:ECS-2520MV-xxx-xx X1
U 1 1 615543D8
P 9500 1250
F 0 "X1" H 9944 1296 50  0000 L CNN
F 1 "ECS-2520MV-xxx-xx" H 9944 1205 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_ECS_2520MV-xxx-xx-4Pin_2.5x2.0mm" H 9950 900 50  0001 C CNN
F 3 "https://www.ecsxtal.com/store/pdf/ECS-2520MV.pdf" H 9325 1375 50  0001 C CNN
	1    9500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1250 8800 1250
Wire Wire Line
	8800 1250 8800 1450
Text Label 8800 1750 3    50   ~ 0
GND
Wire Wire Line
	9900 1250 9900 1450
Wire Wire Line
	9900 1450 10150 1450
Text Label 10150 1750 3    50   ~ 0
GND
$Comp
L Device:C C26
U 1 1 615557B3
P 10150 1600
F 0 "C26" H 10265 1691 50  0000 L CNN
F 1 "22pF" H 10265 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10265 1509 50  0000 L CNN
F 3 "~" H 10150 1600 50  0001 C CNN
	1    10150 1600
	1    0    0    -1  
$EndComp
Text Label 9500 1550 3    50   ~ 0
GND
Text Label 9500 950  0    50   ~ 0
GND
Text Label 8800 1250 2    50   ~ 0
XO
Text Label 9100 4900 3    50   ~ 0
GND
Text GLabel 5200 850  0    50   Input ~ 0
WIFI_nRST
Text GLabel 5200 1050 0    50   Input ~ 0
WIFI_EN
Text GLabel 7250 1750 2    50   Input ~ 0
USART1_TX
Text GLabel 7500 1850 2    50   Input ~ 0
USART1_RX
$Comp
L Device:C C25
U 1 1 61555339
P 8800 1600
F 0 "C25" H 8915 1691 50  0000 L CNN
F 1 "22pF" H 8915 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8915 1509 50  0000 L CNN
F 3 "~" H 8800 1600 50  0001 C CNN
	1    8800 1600
	1    0    0    -1  
$EndComp
Text GLabel 5550 3850 0    50   Input ~ 0
7.5V
Text GLabel 7150 3850 2    50   Input ~ 0
5V
Text GLabel 7150 3950 2    50   Input ~ 0
GND
Text GLabel 6650 5450 0    25   Input ~ 0
USB_D-
Text GLabel 7450 5650 2    25   Input ~ 0
USB_CONN_D+
Text GLabel 6650 5650 0    25   Input ~ 0
USB_CONN_D-
Wire Wire Line
	7050 5150 7350 5150
$Comp
L power:+5V #PWR?
U 1 1 616D6E25
P 7350 5150
AR Path="/616D6E25" Ref="#PWR?"  Part="1" 
AR Path="/616037FA/616D6E25" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 7350 5000 50  0001 C CNN
F 1 "+5V" V 7365 5278 50  0000 L CNN
F 2 "" H 7350 5150 50  0001 C CNN
F 3 "" H 7350 5150 50  0001 C CNN
	1    7350 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 5950 7050 6050
$Comp
L power:GND #PWR?
U 1 1 616D6E2C
P 7050 6050
AR Path="/616D6E2C" Ref="#PWR?"  Part="1" 
AR Path="/616037FA/616D6E2C" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 7050 5800 50  0001 C CNN
F 1 "GND" H 7055 5877 50  0000 C CNN
F 2 "" H 7050 6050 50  0001 C CNN
F 3 "" H 7050 6050 50  0001 C CNN
	1    7050 6050
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:USBLC6-2SC6-Power_Protection ESD?
U 1 1 616D6E32
P 7050 5550
AR Path="/616D6E32" Ref="ESD?"  Part="1" 
AR Path="/616037FA/616D6E32" Ref="ESD1"  Part="1" 
F 0 "ESD1" H 7050 6131 50  0000 C CNN
F 1 "USBLC6-2SC6" H 7050 6040 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7050 5050 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 7250 5900 50  0001 C CNN
	1    7050 5550
	1    0    0    -1  
$EndComp
Text GLabel 7450 5450 2    25   Input ~ 0
USB_D+
Text GLabel 5900 5650 2    25   Input ~ 0
USB_D-
Text GLabel 5900 5750 2    25   Input ~ 0
USB_D+
Text Label 10050 1450 0    50   ~ 0
XI
Wire Wire Line
	4500 5950 4450 5950
Wire Wire Line
	4500 6250 4450 6250
$Comp
L Interface_USB:CH340G U3
U 1 1 6155C867
P 5500 5650
F 0 "U3" H 5500 4961 50  0000 C CNN
F 1 "CH340G" H 5500 4870 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5550 5100 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 5150 6450 50  0001 C CNN
	1    5500 5650
	-1   0    0    1   
$EndComp
Text Label 5500 5050 0    50   ~ 0
GND
Wire Wire Line
	5200 1150 5400 1150
Text Label 5200 1150 0    50   ~ 0
GPIO16
Wire Wire Line
	950  950  950  1250
Connection ~ 950  950 
Connection ~ 950  1250
Text Label 4450 6250 2    50   ~ 0
RXD0
Wire Wire Line
	3700 5300 5100 5300
Connection ~ 3700 5300
Wire Wire Line
	4050 5250 5100 5250
Text Label 2150 7050 0    50   ~ 0
GPIO0
Text Label 2150 4750 0    50   ~ 0
nRST
Wire Wire Line
	2150 5100 2150 4750
Wire Wire Line
	2150 6450 2150 7050
Wire Wire Line
	3700 6050 3700 5300
Wire Wire Line
	2150 6050 3700 6050
Wire Wire Line
	3800 6250 4050 6250
Connection ~ 3800 6250
Wire Wire Line
	3800 5500 3800 6250
Wire Wire Line
	2150 5500 3800 5500
Wire Wire Line
	3550 5300 3700 5300
Wire Wire Line
	2450 5300 3250 5300
Wire Wire Line
	4050 6250 4050 5250
Wire Wire Line
	3550 6250 3800 6250
Wire Wire Line
	2450 6250 3250 6250
$Comp
L Device:R R12
U 1 1 61564667
P 3400 6250
F 0 "R12" V 3193 6250 50  0000 C CNN
F 1 "12K" V 3284 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 6250 50  0000 C CNN
F 3 "~" H 3400 6250 50  0001 C CNN
	1    3400 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 61563235
P 3400 5300
F 0 "R11" V 3193 5300 50  0000 C CNN
F 1 "12K" V 3284 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 5300 50  0000 C CNN
F 3 "~" H 3400 5300 50  0001 C CNN
	1    3400 5300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:S8050 Q3
U 1 1 6155F7AE
P 2250 6250
F 0 "Q3" H 2441 6204 50  0000 L CNN
F 1 "S8050" H 2441 6295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2450 6175 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 2250 6250 50  0001 L CNN
	1    2250 6250
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:S8050 Q2
U 1 1 61561FA1
P 2250 5300
F 0 "Q2" H 2441 5254 50  0000 L CNN
F 1 "S8050" H 2441 5345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2450 5225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 2250 5300 50  0001 L CNN
	1    2250 5300
	-1   0    0    1   
$EndComp
$Comp
L 7.5to5:R-78E5.0-0.5 U?
U 1 1 615F56E0
P 5550 3850
AR Path="/61651051/615F56E0" Ref="U?"  Part="1" 
AR Path="/616037FA/615F56E0" Ref="U4"  Part="1" 
F 0 "U4" H 6350 4237 60  0000 C CNN
F 1 "R-78E5.0-0.5" H 6350 4131 60  0000 C CNN
F 2 "DC 7.5 to 5:R-78E5.0-0.5" H 6350 4090 60  0001 C CNN
F 3 "" H 5550 3850 60  0000 C CNN
	1    5550 3850
	1    0    0    -1  
$EndComp
$Comp
L 5to3v3:VX7803-500 J3
U 1 1 6198DC88
P 3850 3500
F 0 "J3" H 4378 3453 60  0000 L CNN
F 1 "VX7803-500" H 4378 3347 60  0000 L CNN
F 2 "NEW5TO3V3:VX7803-500" H 4250 3340 60  0001 C CNN
F 3 "" H 3850 3500 60  0000 C CNN
	1    3850 3500
	1    0    0    -1  
$EndComp
Text GLabel 3850 3500 0    39   Input ~ 0
5V
Text GLabel 3850 3700 0    39   Input ~ 0
3V3
Text GLabel 3850 3600 0    39   Input ~ 0
GND
$Comp
L microusb_b:2174507-2 J6
U 1 1 6199C811
P 9750 5350
F 0 "J6" H 10478 4903 60  0000 L CNN
F 1 "2174507-2" H 10478 4797 60  0000 L CNN
F 2 "microusb_b:2174507-2" H 10150 5090 60  0001 C CNN
F 3 "" H 9750 5350 60  0000 C CNN
	1    9750 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 619A2A55
P 9600 5350
F 0 "D3" V 9646 5271 50  0000 R CNN
F 1 "D_Schottky" V 9555 5271 50  0000 R CNN
F 2 "Diode 4007:1N4007G-T" H 9550 4800 50  0000 C CNN
F 3 "~" H 9600 5350 50  0001 C CNN
	1    9600 5350
	1    0    0    -1  
$EndComp
Text GLabel 9450 5350 0    39   Input ~ 0
5V
Text GLabel 9750 5550 0    25   Input ~ 0
USB_CONN_D+
Text GLabel 9750 5450 0    25   Input ~ 0
USB_CONN_D-
NoConn ~ 9750 5650
Text GLabel 9750 5750 0    39   Input ~ 0
GND
$EndSCHEMATC
