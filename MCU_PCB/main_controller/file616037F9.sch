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
F 2 "walle_library:esp12f" H 6550 950 50  0001 L CNN
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
	4050 5300 4050 5350
NoConn ~ 4050 5450
NoConn ~ 4050 5550
NoConn ~ 4050 5650
NoConn ~ 4050 5750
NoConn ~ 4850 5950
$Comp
L main_controller-rescue:C-Device C24
U 1 1 6156B43A
P 4350 6800
F 0 "C24" H 4465 6846 50  0000 L CNN
F 1 "100nF" H 4465 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4388 6650 50  0001 C CNN
F 3 "~" H 4350 6800 50  0001 C CNN
	1    4350 6800
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:C-Device C23
U 1 1 6156C5A8
P 3900 6800
F 0 "C23" H 4015 6846 50  0000 L CNN
F 1 "10uF" H 4015 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 6650 50  0001 C CNN
F 3 "~" H 3900 6800 50  0001 C CNN
	1    3900 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6650 4350 6650
Wire Wire Line
	3900 6650 3900 6450
Connection ~ 3900 6650
Text Label 3900 6450 0    50   ~ 0
5V
Text Label 10950 6250 0    50   ~ 0
GND
$Comp
L main_controller-rescue:GND-power #PWR0126
U 1 1 615791C3
P 10950 6250
F 0 "#PWR0126" H 10950 6000 50  0001 C CNN
F 1 "GND" H 10955 6077 50  0000 C CNN
F 2 "" H 10950 6250 50  0001 C CNN
F 3 "" H 10950 6250 50  0001 C CNN
	1    10950 6250
	1    0    0    -1  
$EndComp
Text Label 3900 6950 3    50   ~ 0
GND
Text Label 4350 6950 3    50   ~ 0
GND
$Comp
L main_controller-rescue:R-Device R7
U 1 1 615DD82A
P 8850 3400
F 0 "R7" H 8920 3446 50  0000 L CNN
F 1 "470" H 8920 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 3400 50  0001 C CNN
F 3 "~" H 8850 3400 50  0001 C CNN
	1    8850 3400
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:LED-Device D4
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
$Comp
L main_controller-rescue:R-Device R8
U 1 1 615E2601
P 8850 4350
F 0 "R8" H 8920 4396 50  0000 L CNN
F 1 "470" H 8920 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 4350 50  0001 C CNN
F 3 "~" H 8850 4350 50  0001 C CNN
	1    8850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4000 8850 4100
$Comp
L main_controller-rescue:SW_Push-Switch SW2
U 1 1 615E55B3
P 9100 4700
F 0 "SW2" V 9054 4848 50  0000 L CNN
F 1 "KEY_USER" V 9145 4848 50  0000 L CNN
F 2 "walle_library:SW_147873-2" H 9100 4900 50  0001 C CNN
F 3 "~" H 9100 4900 50  0001 C CNN
	1    9100 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 4100 8550 4100
Text Label 8550 4100 2    50   ~ 0
GPIO16
Wire Wire Line
	8850 4500 9100 4500
$Comp
L main_controller-rescue:R-Device R9
U 1 1 615EA1F0
P 9400 4350
F 0 "R9" H 9470 4396 50  0000 L CNN
F 1 "0(NC)" H 9470 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 4350 50  0001 C CNN
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
L main_controller-rescue:R-Device R10
U 1 1 615F113F
P 10500 4300
F 0 "R10" H 10570 4346 50  0000 L CNN
F 1 "470" H 10570 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10430 4300 50  0001 C CNN
F 3 "~" H 10500 4300 50  0001 C CNN
	1    10500 4300
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:SW_Push-Switch SW3
U 1 1 615F1B1E
P 10500 4650
F 0 "SW3" V 10454 4798 50  0000 L CNN
F 1 "KEY_FLASH" V 10545 4798 50  0000 L CNN
F 2 "walle_library:SW_147873-2" H 10500 4850 50  0001 C CNN
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
	5400 1050 5200 1050
Text Label 5200 1050 0    50   ~ 0
EN
Text Label 4750 700  0    50   ~ 0
3V3
$Comp
L main_controller-rescue:CP1-Device C18
U 1 1 616121AA
P 4750 2050
F 0 "C18" H 4865 2096 50  0000 L CNN
F 1 "100uF" H 4865 2005 50  0000 L CNN
F 2 "walle_library:CAP_EEEHA0J101WR" H 4750 2050 50  0001 C CNN
F 3 "~" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
Text Label 4750 2200 3    50   ~ 0
GND
$Comp
L main_controller-rescue:R-Device R17
U 1 1 6161B737
P 1400 950
F 0 "R17" V 1193 950 50  0000 C CNN
F 1 "12K" V 1284 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 950 50  0001 C CNN
F 3 "~" H 1400 950 50  0001 C CNN
	1    1400 950 
	0    1    1    0   
$EndComp
$Comp
L main_controller-rescue:R-Device R19
U 1 1 6161C48F
P 1400 1250
F 0 "R19" V 1193 1250 50  0000 C CNN
F 1 "12K" V 1284 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 1250 50  0001 C CNN
F 3 "~" H 1400 1250 50  0001 C CNN
	1    1400 1250
	0    1    1    0   
$EndComp
$Comp
L main_controller-rescue:R-Device R20
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
L main_controller-rescue:C-Device C19
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
L main_controller-rescue:R-Device R13
U 1 1 616FEA42
P 3600 5950
F 0 "R13" V 3393 5950 50  0000 C CNN
F 1 "470" V 3484 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3530 5950 50  0001 C CNN
F 3 "~" H 3600 5950 50  0001 C CNN
	1    3600 5950
	0    1    1    0   
$EndComp
$Comp
L main_controller-rescue:R-Device R14
U 1 1 616FFC38
P 3600 6250
F 0 "R14" V 3393 6250 50  0000 C CNN
F 1 "470" V 3484 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3530 6250 50  0001 C CNN
F 3 "~" H 3600 6250 50  0001 C CNN
	1    3600 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 6250 4450 6650
Wire Wire Line
	4050 5950 3750 5950
Text Label 3400 5950 2    50   ~ 0
TXD0
Wire Wire Line
	3750 6250 3900 6250
Wire Wire Line
	3900 6250 3900 6050
Wire Wire Line
	3900 6050 4050 6050
Wire Wire Line
	4850 5250 5000 5250
Text Label 5000 5250 0    50   ~ 0
XO
Wire Wire Line
	4850 5450 5000 5450
Text Label 5000 5450 0    50   ~ 0
XI
Connection ~ 4350 6650
Wire Wire Line
	3900 6650 4350 6650
Text Label 8850 1600 3    50   ~ 0
GND
Text Label 9650 1600 3    50   ~ 0
GND
$Comp
L main_controller-rescue:C-Device C26
U 1 1 615557B3
P 9650 1450
F 0 "C26" H 9765 1541 50  0000 L CNN
F 1 "22pF" H 9765 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9765 1359 50  0000 L CNN
F 3 "~" H 9650 1450 50  0001 C CNN
	1    9650 1450
	1    0    0    -1  
$EndComp
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
L main_controller-rescue:C-Device C25
U 1 1 61555339
P 8850 1450
F 0 "C25" H 8965 1541 50  0000 L CNN
F 1 "22pF" H 8965 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8965 1359 50  0000 L CNN
F 3 "~" H 8850 1450 50  0001 C CNN
	1    8850 1450
	1    0    0    -1  
$EndComp
Text GLabel 5300 3800 0    50   Input ~ 0
7.5V
Text GLabel 5300 4000 0    50   Input ~ 0
5V
Text GLabel 5750 3900 0    50   Input ~ 0
GND
Text GLabel 5600 5450 0    25   Input ~ 0
USB_D-
Text GLabel 6400 5650 2    25   Input ~ 0
USB_CONN_D+
Text GLabel 5600 5650 0    25   Input ~ 0
USB_CONN_D-
Wire Wire Line
	6000 5150 6300 5150
$Comp
L main_controller-rescue:+5V-power #PWR?
U 1 1 616D6E25
P 6300 5150
AR Path="/616D6E25" Ref="#PWR?"  Part="1" 
AR Path="/616037FA/616D6E25" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 6300 5000 50  0001 C CNN
F 1 "+5V" V 6315 5278 50  0000 L CNN
F 2 "" H 6300 5150 50  0001 C CNN
F 3 "" H 6300 5150 50  0001 C CNN
	1    6300 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 5950 6000 6050
$Comp
L main_controller-rescue:GND-power #PWR?
U 1 1 616D6E2C
P 6000 6050
AR Path="/616D6E2C" Ref="#PWR?"  Part="1" 
AR Path="/616037FA/616D6E2C" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 6000 5800 50  0001 C CNN
F 1 "GND" H 6005 5877 50  0000 C CNN
F 2 "" H 6000 6050 50  0001 C CNN
F 3 "" H 6000 6050 50  0001 C CNN
	1    6000 6050
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:USBLC6-2SC6-Power_Protection ESD?
U 1 1 616D6E32
P 6000 5550
AR Path="/616D6E32" Ref="ESD?"  Part="1" 
AR Path="/616037FA/616D6E32" Ref="ESD1"  Part="1" 
F 0 "ESD1" H 6000 6131 50  0000 C CNN
F 1 "USBLC6-2SC6" H 6000 6040 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6000 5050 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 6200 5900 50  0001 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
Text GLabel 6400 5450 2    25   Input ~ 0
USB_D+
Text GLabel 4850 5650 2    25   Input ~ 0
USB_D-
Text GLabel 4850 5750 2    25   Input ~ 0
USB_D+
Wire Wire Line
	3450 5950 3400 5950
Wire Wire Line
	3450 6250 3400 6250
$Comp
L main_controller-rescue:CH340G-Interface_USB U3
U 1 1 6155C867
P 4450 5650
F 0 "U3" H 4450 4961 50  0000 C CNN
F 1 "CH340G" H 4450 4870 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4500 5100 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 4100 6450 50  0001 C CNN
	1    4450 5650
	-1   0    0    1   
$EndComp
Text Label 4450 5050 0    50   ~ 0
GND
Wire Wire Line
	5200 1150 5400 1150
Text Label 5200 1150 0    50   ~ 0
GPIO16
Wire Wire Line
	950  950  950  1250
Connection ~ 950  950 
Connection ~ 950  1250
Text Label 3400 6250 2    50   ~ 0
RXD0
Wire Wire Line
	2650 5300 4050 5300
Connection ~ 2650 5300
Text Label 1100 7050 0    50   ~ 0
GPIO0
Text Label 1100 4750 0    50   ~ 0
nRST
Wire Wire Line
	1100 6450 1100 7050
Wire Wire Line
	2650 6050 2650 5300
Wire Wire Line
	1100 6050 2650 6050
Wire Wire Line
	1100 5500 2750 5500
Wire Wire Line
	2500 5300 2650 5300
Wire Wire Line
	1400 5300 2200 5300
Wire Wire Line
	3000 6250 3000 5250
Wire Wire Line
	1400 6250 2200 6250
$Comp
L main_controller-rescue:R-Device R12
U 1 1 61564667
P 2350 6250
F 0 "R12" V 2143 6250 50  0000 C CNN
F 1 "12K" V 2234 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2280 6250 50  0001 C CNN
F 3 "~" H 2350 6250 50  0001 C CNN
	1    2350 6250
	0    1    1    0   
$EndComp
$Comp
L main_controller-rescue:R-Device R11
U 1 1 61563235
P 2350 5300
F 0 "R11" V 2143 5300 50  0000 C CNN
F 1 "12K" V 2234 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2280 5300 50  0001 C CNN
F 3 "~" H 2350 5300 50  0001 C CNN
	1    2350 5300
	0    1    1    0   
$EndComp
$Comp
L main_controller-rescue:VX7803-500-5to3v3 J3
U 1 1 6198DC88
P 3850 3500
AR Path="/6198DC88" Ref="J3"  Part="1" 
AR Path="/616037FA/6198DC88" Ref="J3"  Part="1" 
F 0 "J3" H 4378 3453 60  0000 L CNN
F 1 "VX7803-500" H 4378 3347 60  0000 L CNN
F 2 "walle_library:VX7803-500" H 4250 3340 60  0001 C CNN
F 3 "" H 3850 3500 60  0000 C CNN
	1    3850 3500
	1    0    0    -1  
$EndComp
Text GLabel 3350 3500 0    39   Input ~ 0
5V
Text GLabel 3400 3700 0    39   Input ~ 0
3V3
Text GLabel 3850 3600 0    39   Input ~ 0
GND
$Comp
L main_controller-rescue:2174507-2-microusb_b J6
U 1 1 6199C811
P 9750 5350
F 0 "J6" H 10478 4903 60  0000 L CNN
F 1 "2174507-2" H 10478 4797 60  0000 L CNN
F 2 "walle_library:2174507-2" H 10150 5090 60  0001 C CNN
F 3 "" H 9750 5350 60  0000 C CNN
	1    9750 5350
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:D_Schottky-Device D3
U 1 1 619A2A55
P 9600 5350
F 0 "D3" V 9646 5271 50  0000 R CNN
F 1 "D_Schottky" V 9555 5271 50  0001 R CNN
F 2 "walle_library:1N4007G-T" H 9550 4800 50  0001 C CNN
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
$Comp
L main_controller-rescue:TestPoint-Connector TP1
U 1 1 61A9A436
P 2300 2850
F 0 "TP1" H 2358 2968 50  0000 L CNN
F 1 "TestPoint" H 2358 2877 50  0000 L CNN
F 2 "walle_library:KEYSTONE_5000" H 2500 2850 50  0001 C CNN
F 3 "~" H 2500 2850 50  0001 C CNN
	1    2300 2850
	1    0    0    -1  
$EndComp
Text GLabel 2300 2850 3    39   Input ~ 0
USART1_TX
$Comp
L main_controller-rescue:TestPoint-Connector TP2
U 1 1 61A9BF95
P 2950 2850
F 0 "TP2" H 3008 2968 50  0000 L CNN
F 1 "TestPoint" H 3008 2877 50  0000 L CNN
F 2 "walle_library:KEYSTONE_5000" H 3150 2850 50  0001 C CNN
F 3 "~" H 3150 2850 50  0001 C CNN
	1    2950 2850
	1    0    0    -1  
$EndComp
Text GLabel 2950 2850 3    39   Input ~ 0
USART1_RX
$Comp
L main_controller-rescue:MountingHole-Mechanical H1
U 1 1 61A9F739
P 6200 2600
F 0 "H1" H 6300 2646 50  0000 L CNN
F 1 "MountingHole" H 6300 2555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6200 2600 50  0001 C CNN
F 3 "~" H 6200 2600 50  0001 C CNN
	1    6200 2600
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:MountingHole-Mechanical H2
U 1 1 61AA5D09
P 6200 2900
F 0 "H2" H 6300 2946 50  0000 L CNN
F 1 "MountingHole" H 6300 2855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6200 2900 50  0001 C CNN
F 3 "~" H 6200 2900 50  0001 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:MountingHole-Mechanical H3
U 1 1 61AA7533
P 6200 3200
F 0 "H3" H 6300 3246 50  0000 L CNN
F 1 "MountingHole" H 6300 3155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6200 3200 50  0001 C CNN
F 3 "~" H 6200 3200 50  0001 C CNN
	1    6200 3200
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:S8050-Transistor_BJT Q2
U 1 1 61561FA1
P 1000 5300
F 0 "Q2" H 1191 5254 50  0000 L CNN
F 1 "S8050" H 1191 5345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1200 5225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 1000 5300 50  0001 L CNN
	1    1000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5300 1400 5600
Wire Wire Line
	1400 5600 800  5600
$Comp
L main_controller-rescue:S8050-Transistor_BJT Q3
U 1 1 6155F7AE
P 1200 6250
F 0 "Q3" H 1391 6204 50  0000 L CNN
F 1 "S8050" H 1391 6295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1400 6175 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 1200 6250 50  0001 L CNN
	1    1200 6250
	-1   0    0    1   
$EndComp
$Comp
L main_controller-rescue:C-Device C22
U 1 1 6171223D
P 3650 3350
F 0 "C22" H 3765 3396 50  0000 L CNN
F 1 "10uF" H 3765 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 3688 3200 50  0001 C CNN
F 3 "~" H 3650 3350 50  0001 C CNN
	1    3650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3500 3650 3500
Connection ~ 3650 3500
Wire Wire Line
	3650 3500 3850 3500
Text GLabel 3650 3200 0    50   Input ~ 0
GND
$Comp
L main_controller-rescue:C-Device C27
U 1 1 61719C85
P 3650 3850
F 0 "C27" H 3765 3896 50  0000 L CNN
F 1 "22uF" H 3765 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 3688 3700 50  0001 C CNN
F 3 "~" H 3650 3850 50  0001 C CNN
	1    3650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3700 3650 3700
Connection ~ 3650 3700
Wire Wire Line
	3650 3700 3850 3700
Text GLabel 3650 4000 0    50   Input ~ 0
GND
$Comp
L main_controller-rescue:R-78E5.0-1.0-R-78E5.0-1.0 PS1
U 1 1 6171FA76
P 5750 3800
F 0 "PS1" H 6578 3746 50  0000 L CNN
F 1 "R-78E5.0-1.0" H 6578 3655 50  0000 L CNN
F 2 "R78E5010" H 6600 3900 50  0001 L CNN
F 3 "http://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 6600 3800 50  0001 L CNN
F 4 "Non-Isolated DC/DC Converters 8-28Vin 5V 1.0A THRU" H 6600 3700 50  0001 L CNN "Description"
F 5 "10.4" H 6600 3600 50  0001 L CNN "Height"
F 6 "919-R-78E5.0-1.0" H 6600 3500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/RECOM-Power/R-78E50-10?qs=T0XSgvH75d4EsZCU9I5HVA%3D%3D" H 6600 3400 50  0001 L CNN "Mouser Price/Stock"
F 8 "RECOM Power" H 6600 3300 50  0001 L CNN "Manufacturer_Name"
F 9 "R-78E5.0-1.0" H 6600 3200 50  0001 L CNN "Manufacturer_Part_Number"
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:C-Device C28
U 1 1 61725B78
P 5500 3650
F 0 "C28" H 5615 3696 50  0000 L CNN
F 1 "10uF" H 5615 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 5538 3500 50  0001 C CNN
F 3 "~" H 5500 3650 50  0001 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L main_controller-rescue:C-Device C29
U 1 1 617277D0
P 5500 4150
F 0 "C29" H 5615 4196 50  0000 L CNN
F 1 "10uF" H 5615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 5538 4000 50  0001 C CNN
F 3 "~" H 5500 4150 50  0001 C CNN
	1    5500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4000 5500 4000
Connection ~ 5500 4000
Wire Wire Line
	5500 4000 5750 4000
Wire Wire Line
	5300 3800 5500 3800
Connection ~ 5500 3800
Wire Wire Line
	5500 3800 5750 3800
Text GLabel 5500 3500 0    50   Input ~ 0
GND
Text GLabel 5500 4300 0    50   Input ~ 0
GND
Wire Wire Line
	1100 5100 1100 4750
Wire Wire Line
	800  5600 800  5300
Wire Wire Line
	4050 5250 3000 5250
Wire Wire Line
	3000 6250 2750 6250
Wire Wire Line
	2750 5500 2750 6250
Connection ~ 2750 6250
Wire Wire Line
	2750 6250 2500 6250
Connection ~ 8850 4100
Wire Wire Line
	8850 4100 8850 4200
Wire Wire Line
	8850 3550 8850 3700
Wire Wire Line
	9400 4000 9400 3750
Connection ~ 9400 4000
Text Label 9400 3750 0    50   ~ 0
3V3
$Comp
L main_controller-rescue:ABM3B-12.000MHZ-2021-10-20_16-14-19 Y2
U 1 1 61811995
P 8950 1300
AR Path="/61811995" Ref="Y2"  Part="1" 
AR Path="/616037FA/61811995" Ref="Y2"  Part="1" 
F 0 "Y2" H 9394 1353 60  0000 L CNN
F 1 "ABM3B-12.000MHZ" H 9394 1247 60  0000 L CNN
F 2 "walle_library:ABM3B-12.000MHZ" H 9150 940 60  0001 C CNN
F 3 "" H 8950 1300 60  0000 C CNN
	1    8950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1300 8950 1300
Wire Wire Line
	9350 1300 9650 1300
Text Label 8850 1300 2    50   ~ 0
XO
Text Label 9650 1300 0    50   ~ 0
XI
Text Label 9150 1100 0    50   ~ 0
GND
Text Label 9150 1500 3    50   ~ 0
GND
$EndSCHEMATC
