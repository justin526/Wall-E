EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MCU+WiFi Schematic"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	9350 2800 9450 2800
Wire Wire Line
	9450 2800 9450 2900
Wire Wire Line
	9450 3800 9350 3800
Wire Wire Line
	9350 3600 9450 3600
$Comp
L MCU_ST_STM32F4:STM32F446ZETx U1
U 1 1 61C19CF1
P 5750 3300
F 0 "U1" V 4150 3350 50  0000 R CNN
F 1 "STM32F446ZET6" V 4300 3600 50  0000 R CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 4750 -100 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00141306.pdf" H 5750 3300 50  0001 C CNN
	1    5750 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 3500 9450 3500
Connection ~ 9450 3500
Wire Wire Line
	9450 3500 9450 3600
Wire Wire Line
	9350 3400 9450 3400
Connection ~ 9450 3400
Wire Wire Line
	9450 3400 9450 3500
Wire Wire Line
	9350 3300 9450 3300
Connection ~ 9450 3300
Wire Wire Line
	9450 3300 9450 3400
Wire Wire Line
	9350 3200 9450 3200
Connection ~ 9450 3200
Wire Wire Line
	9450 3200 9450 3300
Wire Wire Line
	9350 3100 9450 3100
Connection ~ 9450 3100
Wire Wire Line
	9450 3100 9450 3200
Wire Wire Line
	9350 3000 9450 3000
Connection ~ 9450 3000
Wire Wire Line
	9450 3000 9450 3100
Wire Wire Line
	9350 2900 9450 2900
Connection ~ 9450 2900
Wire Wire Line
	9450 2900 9450 3000
Wire Wire Line
	2150 2900 2000 2900
Wire Wire Line
	2000 2900 2000 3000
Wire Wire Line
	2000 3700 2100 3700
Wire Wire Line
	2150 3600 2000 3600
Connection ~ 2000 3600
Wire Wire Line
	2000 3600 2000 3700
Wire Wire Line
	2150 3500 2000 3500
Connection ~ 2000 3500
Wire Wire Line
	2000 3500 2000 3600
Wire Wire Line
	2150 3400 2000 3400
Connection ~ 2000 3400
Wire Wire Line
	2000 3400 2000 3500
Wire Wire Line
	2150 3300 2000 3300
Connection ~ 2000 3300
Wire Wire Line
	2000 3300 2000 3400
Wire Wire Line
	2150 3200 2000 3200
Connection ~ 2000 3200
Wire Wire Line
	2000 3200 2000 3300
Wire Wire Line
	2150 3100 2000 3100
Connection ~ 2000 3100
Wire Wire Line
	2000 3100 2000 3200
Wire Wire Line
	2150 3000 2000 3000
Connection ~ 2000 3000
Wire Wire Line
	2000 3000 2000 3100
Wire Wire Line
	9450 2800 9450 2700
Wire Wire Line
	9450 2700 9350 2700
Connection ~ 9450 2800
Wire Wire Line
	9450 2700 9450 2600
Connection ~ 9450 2700
$Comp
L power:+3.3V #PWR0101
U 1 1 61565A54
P 9450 2600
F 0 "#PWR0101" H 9450 2450 50  0001 C CNN
F 1 "+3.3V" H 9465 2773 50  0000 C CNN
F 2 "" H 9450 2600 50  0001 C CNN
F 3 "" H 9450 2600 50  0001 C CNN
	1    9450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3900 9450 3900
$Comp
L power:+3.3VA #PWR0102
U 1 1 61566D94
P 9450 3900
F 0 "#PWR0102" H 9450 3750 50  0001 C CNN
F 1 "+3.3VA" V 9465 4028 50  0000 L CNN
F 2 "" H 9450 3900 50  0001 C CNN
F 3 "" H 9450 3900 50  0001 C CNN
	1    9450 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 61567A75
P 8600 1900
F 0 "C17" H 8450 2000 50  0000 L CNN
F 1 "2.2u" H 8400 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8600 1900 50  0001 C CNN
F 3 "~" H 8600 1900 50  0001 C CNN
	1    8600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 61568BB4
P 8400 1900
F 0 "C16" H 8100 1900 50  0000 L CNN
F 1 "2.2u" H 8000 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8400 1900 50  0001 C CNN
F 3 "~" H 8400 1900 50  0001 C CNN
	1    8400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2100 8550 2050
Wire Wire Line
	8550 2050 8600 2050
Wire Wire Line
	8600 2050 8600 2000
Wire Wire Line
	8450 2100 8450 2050
Wire Wire Line
	8450 2050 8400 2050
Wire Wire Line
	8400 2000 8400 2050
Wire Wire Line
	8400 1800 8400 1700
Wire Wire Line
	8600 1800 8600 1700
Wire Wire Line
	2000 3700 1800 3700
Connection ~ 2000 3700
$Comp
L power:GND #PWR0103
U 1 1 61574799
P 1800 3700
F 0 "#PWR0103" H 1800 3450 50  0001 C CNN
F 1 "GND" V 1805 3572 50  0000 R CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61574E44
P 8400 1700
F 0 "#PWR0104" H 8400 1450 50  0001 C CNN
F 1 "GND" H 8405 1527 50  0000 C CNN
F 2 "" H 8400 1700 50  0001 C CNN
F 3 "" H 8400 1700 50  0001 C CNN
	1    8400 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 615757E4
P 8600 1700
F 0 "#PWR0105" H 8600 1450 50  0001 C CNN
F 1 "GND" H 8605 1527 50  0000 C CNN
F 2 "" H 8600 1700 50  0001 C CNN
F 3 "" H 8600 1700 50  0001 C CNN
	1    8600 1700
	-1   0    0    1   
$EndComp
Text GLabel 9050 2100 1    50   Input ~ 0
NRST
Text GLabel 8750 2100 1    50   Input ~ 0
BOOT0
$Comp
L Switch:SW_SPDT SW1
U 1 1 615A5636
P 7400 950
F 0 "SW1" H 7400 1235 50  0000 C CNN
F 1 "SW_SPDT" H 7400 1144 50  0000 C CNN
F 2 "" H 7400 950 50  0001 C CNN
F 3 "~" H 7400 950 50  0001 C CNN
	1    7400 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 615A77F7
P 6900 950
F 0 "R1" V 6704 950 50  0000 C CNN
F 1 "10k" V 6795 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6900 950 50  0001 C CNN
F 3 "~" H 6900 950 50  0001 C CNN
	1    6900 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 1050 7750 1050
Wire Wire Line
	7200 950  7000 950 
Wire Wire Line
	7600 850  7750 850 
$Comp
L power:GND #PWR0106
U 1 1 615ACF23
P 7750 1050
F 0 "#PWR0106" H 7750 800 50  0001 C CNN
F 1 "GND" H 7755 877 50  0000 C CNN
F 2 "" H 7750 1050 50  0001 C CNN
F 3 "" H 7750 1050 50  0001 C CNN
	1    7750 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 615AD4AD
P 7750 850
F 0 "#PWR0107" H 7750 700 50  0001 C CNN
F 1 "+3.3V" H 7765 1023 50  0000 C CNN
F 2 "" H 7750 850 50  0001 C CNN
F 3 "" H 7750 850 50  0001 C CNN
	1    7750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 950  6600 950 
Text GLabel 6600 950  0    50   Input ~ 0
BOOT0
Text Notes 6150 600  0    50   ~ 0
Boot0 Pin Wiring. This affects programming the microcontroller.
$Comp
L Device:C_Small C1
U 1 1 615AF671
P 7250 5800
F 0 "C1" H 7342 5846 50  0000 L CNN
F 1 "4.7u" H 7250 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7250 5800 50  0001 C CNN
F 3 "~" H 7250 5800 50  0001 C CNN
	1    7250 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 615B01A2
P 7600 5800
F 0 "C2" H 7692 5846 50  0000 L CNN
F 1 "100n" H 7650 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7600 5800 50  0001 C CNN
F 3 "~" H 7600 5800 50  0001 C CNN
	1    7600 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 615B04AF
P 8000 5800
F 0 "C3" H 8092 5846 50  0000 L CNN
F 1 "100n" H 8050 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8000 5800 50  0001 C CNN
F 3 "~" H 8000 5800 50  0001 C CNN
	1    8000 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 615B07D3
P 8450 5800
F 0 "C4" H 8542 5846 50  0000 L CNN
F 1 "100n" H 8450 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8450 5800 50  0001 C CNN
F 3 "~" H 8450 5800 50  0001 C CNN
	1    8450 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 615B09E9
P 8750 5800
F 0 "C5" H 8842 5846 50  0000 L CNN
F 1 "100n" H 8750 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8750 5800 50  0001 C CNN
F 3 "~" H 8750 5800 50  0001 C CNN
	1    8750 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 615B14D3
P 9050 5800
F 0 "C6" H 9142 5846 50  0000 L CNN
F 1 "100n" H 9050 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9050 5800 50  0001 C CNN
F 3 "~" H 9050 5800 50  0001 C CNN
	1    9050 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 615B184B
P 9300 5800
F 0 "C7" H 9392 5846 50  0000 L CNN
F 1 "100n" H 9350 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9300 5800 50  0001 C CNN
F 3 "~" H 9300 5800 50  0001 C CNN
	1    9300 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 615B1A03
P 9650 5800
F 0 "C8" H 9742 5846 50  0000 L CNN
F 1 "100n" H 9650 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9650 5800 50  0001 C CNN
F 3 "~" H 9650 5800 50  0001 C CNN
	1    9650 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 615B1D50
P 9950 5800
F 0 "C9" H 10042 5846 50  0000 L CNN
F 1 "100n" H 9950 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9950 5800 50  0001 C CNN
F 3 "~" H 9950 5800 50  0001 C CNN
	1    9950 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 615B21D4
P 10200 5800
F 0 "C10" H 10292 5846 50  0000 L CNN
F 1 "100n" H 10250 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10200 5800 50  0001 C CNN
F 3 "~" H 10200 5800 50  0001 C CNN
	1    10200 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 615B249C
P 10450 5800
F 0 "C11" H 10542 5846 50  0000 L CNN
F 1 "100n" H 10450 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10450 5800 50  0001 C CNN
F 3 "~" H 10450 5800 50  0001 C CNN
	1    10450 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 615B2707
P 10700 5800
F 0 "C12" H 10792 5846 50  0000 L CNN
F 1 "100n" H 10700 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10700 5800 50  0001 C CNN
F 3 "~" H 10700 5800 50  0001 C CNN
	1    10700 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 615B295A
P 10950 5800
F 0 "C13" H 11042 5846 50  0000 L CNN
F 1 "100n" H 11000 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10950 5800 50  0001 C CNN
F 3 "~" H 10950 5800 50  0001 C CNN
	1    10950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5700 7250 5600
Wire Wire Line
	7250 5600 7600 5600
Wire Wire Line
	10950 5600 10950 5700
Wire Wire Line
	7600 5700 7600 5600
Connection ~ 7600 5600
Wire Wire Line
	7600 5600 8000 5600
Wire Wire Line
	8000 5700 8000 5600
Connection ~ 8000 5600
Wire Wire Line
	8000 5600 8450 5600
Wire Wire Line
	8450 5700 8450 5600
Connection ~ 8450 5600
Wire Wire Line
	8450 5600 8750 5600
Wire Wire Line
	8750 5700 8750 5600
Connection ~ 8750 5600
Wire Wire Line
	8750 5600 9050 5600
Wire Wire Line
	9050 5700 9050 5600
Connection ~ 9050 5600
Wire Wire Line
	9050 5600 9300 5600
Wire Wire Line
	9300 5700 9300 5600
Connection ~ 9300 5600
Wire Wire Line
	9300 5600 9650 5600
Wire Wire Line
	9650 5700 9650 5600
Connection ~ 9650 5600
Wire Wire Line
	9650 5600 9950 5600
Wire Wire Line
	9950 5700 9950 5600
Connection ~ 9950 5600
Wire Wire Line
	9950 5600 10200 5600
Wire Wire Line
	10200 5700 10200 5600
Connection ~ 10200 5600
Wire Wire Line
	10200 5600 10450 5600
Wire Wire Line
	10450 5700 10450 5600
Connection ~ 10450 5600
Wire Wire Line
	10450 5600 10700 5600
Wire Wire Line
	10700 5700 10700 5600
Connection ~ 10700 5600
Wire Wire Line
	10700 5600 10950 5600
Wire Wire Line
	7250 5900 7250 6050
Wire Wire Line
	7250 6050 7600 6050
Wire Wire Line
	10950 6050 10950 5900
Wire Wire Line
	10700 5900 10700 6050
Connection ~ 10700 6050
Wire Wire Line
	10700 6050 10950 6050
Wire Wire Line
	10450 5900 10450 6050
Connection ~ 10450 6050
Wire Wire Line
	10450 6050 10700 6050
Wire Wire Line
	10200 5900 10200 6050
Connection ~ 10200 6050
Wire Wire Line
	10200 6050 10450 6050
Wire Wire Line
	9950 5900 9950 6050
Connection ~ 9950 6050
Wire Wire Line
	9950 6050 10200 6050
Wire Wire Line
	9650 5900 9650 6050
Connection ~ 9650 6050
Wire Wire Line
	9650 6050 9950 6050
Wire Wire Line
	9300 5900 9300 6050
Connection ~ 9300 6050
Wire Wire Line
	9300 6050 9650 6050
Wire Wire Line
	9050 5900 9050 6050
Connection ~ 9050 6050
Wire Wire Line
	9050 6050 9300 6050
Wire Wire Line
	8750 5900 8750 6050
Connection ~ 8750 6050
Wire Wire Line
	8750 6050 9050 6050
Wire Wire Line
	8450 5900 8450 6050
Connection ~ 8450 6050
Wire Wire Line
	8450 6050 8750 6050
Wire Wire Line
	8000 5900 8000 6050
Connection ~ 8000 6050
Wire Wire Line
	8000 6050 8450 6050
Wire Wire Line
	7600 5900 7600 6050
Connection ~ 7600 6050
Wire Wire Line
	7600 6050 8000 6050
Text Notes 8050 6250 0    50   ~ 0
This is a set of decoupling capacitors per power pin pair
$Comp
L power:+3.3V #PWR0108
U 1 1 615E3CD3
P 7250 5550
F 0 "#PWR0108" H 7250 5400 50  0001 C CNN
F 1 "+3.3V" H 7265 5723 50  0000 C CNN
F 2 "" H 7250 5550 50  0001 C CNN
F 3 "" H 7250 5550 50  0001 C CNN
	1    7250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5600 7250 5550
Connection ~ 7250 5600
Wire Wire Line
	10950 6050 10950 6200
Connection ~ 10950 6050
$Comp
L power:GND #PWR0109
U 1 1 615EAA15
P 10950 6200
F 0 "#PWR0109" H 10950 5950 50  0001 C CNN
F 1 "GND" H 10955 6027 50  0000 C CNN
F 2 "" H 10950 6200 50  0001 C CNN
F 3 "" H 10950 6200 50  0001 C CNN
	1    10950 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 615EBEEB
P 9400 850
F 0 "#PWR0110" H 9400 700 50  0001 C CNN
F 1 "+3.3V" H 9415 1023 50  0000 C CNN
F 2 "" H 9400 850 50  0001 C CNN
F 3 "" H 9400 850 50  0001 C CNN
	1    9400 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 615EC99D
P 9700 950
F 0 "L1" V 9885 950 50  0000 C CNN
F 1 "39n" V 9794 950 50  0000 C CNN
F 2 "" H 9700 950 50  0001 C CNN
F 3 "~" H 9700 950 50  0001 C CNN
	1    9700 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 850  9400 950 
Wire Wire Line
	9400 950  9600 950 
$Comp
L Device:C_Small C14
U 1 1 615F51D3
P 10050 1150
F 0 "C14" H 9900 1200 50  0000 L CNN
F 1 "1u" H 9900 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10050 1150 50  0001 C CNN
F 3 "~" H 10050 1150 50  0001 C CNN
	1    10050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 615F5E22
P 10450 1150
F 0 "C15" H 10542 1196 50  0000 L CNN
F 1 "10n" H 10542 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10450 1150 50  0001 C CNN
F 3 "~" H 10450 1150 50  0001 C CNN
	1    10450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1050 10050 950 
Wire Wire Line
	9800 950  10050 950 
Wire Wire Line
	10050 950  10450 950 
Wire Wire Line
	10450 950  10450 1050
Connection ~ 10050 950 
Wire Wire Line
	10450 1250 10450 1400
Wire Wire Line
	10450 1400 10050 1400
Wire Wire Line
	10050 1400 10050 1250
$Comp
L power:GND #PWR0111
U 1 1 6160194E
P 10450 1400
F 0 "#PWR0111" H 10450 1150 50  0001 C CNN
F 1 "GND" H 10455 1227 50  0000 C CNN
F 2 "" H 10450 1400 50  0001 C CNN
F 3 "" H 10450 1400 50  0001 C CNN
	1    10450 1400
	1    0    0    -1  
$EndComp
Connection ~ 10450 1400
$Comp
L power:+3.3VA #PWR0112
U 1 1 61602D74
P 10450 950
F 0 "#PWR0112" H 10450 800 50  0001 C CNN
F 1 "+3.3VA" H 10465 1123 50  0000 C CNN
F 2 "" H 10450 950 50  0001 C CNN
F 3 "" H 10450 950 50  0001 C CNN
	1    10450 950 
	1    0    0    -1  
$EndComp
Connection ~ 10450 950 
Text Notes 8850 1700 0    50   ~ 0
This is decoupling circuitry for the analog supply of the MCU
Text GLabel 7650 2100 1    50   Input ~ 0
HSE_IN
Text GLabel 7550 2100 1    50   Input ~ 0
HSE_OUT
Text Notes 7000 6600 0    25   ~ 0
Note: Need to check whether an oscillator is needed for MCU
$Comp
L power:+12V #PWR0113
U 1 1 61654E99
P 700 6850
F 0 "#PWR0113" H 700 6700 50  0001 C CNN
F 1 "+12V" H 715 7023 50  0000 C CNN
F 2 "" H 700 6850 50  0001 C CNN
F 3 "" H 700 6850 50  0001 C CNN
	1    700  6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  6850 700  7050
$Comp
L Device:Polyfuse_Small F1
U 1 1 61659C37
P 1250 7050
F 0 "F1" V 1045 7050 50  0000 C CNN
F 1 "750mA" V 1136 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 1300 6850 50  0001 L CNN
F 3 "~" H 1250 7050 50  0001 C CNN
	1    1250 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	700  7050 1150 7050
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 6165F471
P 1700 7150
F 0 "Q1" V 2042 7150 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 1951 7150 50  0000 C CNN
F 2 "DMP3098LSS-13:SOIC127P600X175-8N" H 1900 7250 50  0001 C CNN
F 3 "~" H 1700 7150 50  0001 C CNN
	1    1700 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 7050 1500 7050
Wire Wire Line
	1700 7350 1700 7450
$Comp
L power:GND #PWR0114
U 1 1 616687F4
P 1700 7450
F 0 "#PWR0114" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	1    0    0    -1  
$EndComp
Text Label 2750 7050 0    25   ~ 0
3.3V_reg_in
Text Notes 1250 7700 0    25   ~ 0
This is a circuit for reverse polarity protection for the Circuit
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 6166E711
P 2450 7050
F 0 "FB1" V 2213 7050 50  0000 C CNN
F 1 "600 @ 600 MHz" V 2304 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2380 7050 50  0001 C CNN
F 3 "~" H 2450 7050 50  0001 C CNN
	1    2450 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 7050 2050 7050
Wire Wire Line
	2750 7050 2550 7050
$Comp
L Connector:Conn_01x06_Female SWD1
U 1 1 6167806A
P 4250 6800
F 0 "SWD1" H 4278 6776 50  0000 L CNN
F 1 "Conn_01x06_Female" H 4278 6685 50  0000 L CNN
F 2 "" H 4250 6800 50  0001 C CNN
F 3 "~" H 4250 6800 50  0001 C CNN
	1    4250 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6600 3850 6600
Wire Wire Line
	4050 6700 3850 6700
Wire Wire Line
	4050 6800 3850 6800
Wire Wire Line
	4050 7000 3850 7000
Wire Wire Line
	4050 7100 3850 7100
Text GLabel 3850 6600 0    25   Input ~ 0
3.3V_regulator
Text GLabel 3850 6700 0    25   Input ~ 0
SWCLK
Text GLabel 3850 6800 0    25   Input ~ 0
GND
Text GLabel 3850 7000 0    25   Input ~ 0
NRST
Text GLabel 3600 6900 0    25   Input ~ 0
SWDIO
Wire Wire Line
	4350 7500 4350 7300
$Comp
L power:GND #PWR0115
U 1 1 6169E40A
P 4350 7500
F 0 "#PWR0115" H 4350 7250 50  0001 C CNN
F 1 "GND" H 4355 7327 50  0000 C CNN
F 2 "" H 4350 7500 50  0001 C CNN
F 3 "" H 4350 7500 50  0001 C CNN
	1    4350 7500
	1    0    0    -1  
$EndComp
Text GLabel 4350 7300 1    25   Input ~ 0
GND
Text Notes 3300 6450 0    25   ~ 0
This is based on the ST-Link Connector on the Dev board which can be used to program the microcontroller
$Comp
L Device:R_Small R3
U 1 1 6169F2BE
P 3700 6900
F 0 "R3" V 3500 6650 50  0000 C CNN
F 1 "22" V 3600 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3700 6900 50  0001 C CNN
F 3 "~" H 3700 6900 50  0001 C CNN
	1    3700 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 6900 4050 6900
NoConn ~ 3850 7100
$Comp
L Connector:USB_B_Micro USB_J1
U 1 1 616AE991
P 950 5300
F 0 "USB_J1" H 1007 5767 50  0000 C CNN
F 1 "USB_B_Micro" H 1007 5676 50  0000 C CNN
F 2 "SamacSys_Parts:USB313530A" H 1100 5250 50  0001 C CNN
F 3 "~" H 1100 5250 50  0001 C CNN
	1    950  5300
	1    0    0    -1  
$EndComp
NoConn ~ 850  5700
Wire Wire Line
	950  5700 950  5750
$Comp
L power:GND #PWR0116
U 1 1 616B88F2
P 950 5750
F 0 "#PWR0116" H 950 5500 50  0001 C CNN
F 1 "GND" H 955 5577 50  0000 C CNN
F 2 "" H 950 5750 50  0001 C CNN
F 3 "" H 950 5750 50  0001 C CNN
	1    950  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5500 1350 5500
NoConn ~ 1350 5500
$Comp
L Device:D_Schottky D1
U 1 1 616CD7F3
P 2050 6650
F 0 "D1" V 2096 6570 50  0000 R CNN
F 1 "D_Schottky" V 2005 6570 50  0000 R CNN
F 2 "" H 2050 6650 50  0001 C CNN
F 3 "~" H 2050 6650 50  0001 C CNN
	1    2050 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 6800 2050 7050
Connection ~ 2050 7050
Wire Wire Line
	2050 7050 2350 7050
$Comp
L power:+5V #PWR0117
U 1 1 616D8F53
P 2050 6500
F 0 "#PWR0117" H 2050 6350 50  0001 C CNN
F 1 "+5V" H 2065 6673 50  0000 C CNN
F 2 "" H 2050 6500 50  0001 C CNN
F 3 "" H 2050 6500 50  0001 C CNN
	1    2050 6500
	1    0    0    -1  
$EndComp
Text GLabel 1250 5300 2    25   Input ~ 0
USB_CONN_D+
Text GLabel 1250 5400 2    25   Input ~ 0
USB_CONN_D-
Text GLabel 2700 5250 2    25   Input ~ 0
USB_D+
Text GLabel 1900 5250 0    25   Input ~ 0
USB_D-
Text GLabel 2700 5450 2    25   Input ~ 0
USB_CONN_D+
Text GLabel 1900 5450 0    25   Input ~ 0
USB_CONN_D-
Wire Wire Line
	2300 4950 2600 4950
$Comp
L power:+5V #PWR0118
U 1 1 616E2FD1
P 2600 4950
F 0 "#PWR0118" H 2600 4800 50  0001 C CNN
F 1 "+5V" V 2615 5078 50  0000 L CNN
F 2 "" H 2600 4950 50  0001 C CNN
F 3 "" H 2600 4950 50  0001 C CNN
	1    2600 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 5750 2300 5850
$Comp
L power:GND #PWR0119
U 1 1 616E9083
P 2300 5850
F 0 "#PWR0119" H 2300 5600 50  0001 C CNN
F 1 "GND" H 2305 5677 50  0000 C CNN
F 2 "" H 2300 5850 50  0001 C CNN
F 3 "" H 2300 5850 50  0001 C CNN
	1    2300 5850
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:USBLC6-2SC6 ESD1
U 1 1 616C9E8D
P 2300 5350
F 0 "ESD1" H 2300 5931 50  0000 C CNN
F 1 "USBLC6-2SC6" H 2300 5840 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2300 4850 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 2500 5700 50  0001 C CNN
	1    2300 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 616FF460
P 3400 5400
F 0 "D2" V 3439 5282 50  0000 R CNN
F 1 "RED" V 3348 5282 50  0000 R CNN
F 2 "" H 3400 5400 50  0001 C CNN
F 3 "~" H 3400 5400 50  0001 C CNN
	1    3400 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 617069B7
P 3400 5100
F 0 "#PWR0120" H 3400 4950 50  0001 C CNN
F 1 "+3.3V" H 3415 5273 50  0000 C CNN
F 2 "" H 3400 5100 50  0001 C CNN
F 3 "" H 3400 5100 50  0001 C CNN
	1    3400 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6171293D
P 3400 5800
F 0 "R4" H 3341 5754 50  0000 R CNN
F 1 "1k" H 3341 5845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3400 5800 50  0001 C CNN
F 3 "~" H 3400 5800 50  0001 C CNN
	1    3400 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 5550 3400 5700
Wire Wire Line
	3400 5900 3400 5950
$Comp
L power:GND #PWR0121
U 1 1 61724BA1
P 3400 5950
F 0 "#PWR0121" H 3400 5700 50  0001 C CNN
F 1 "GND" H 3405 5777 50  0000 C CNN
F 2 "" H 3400 5950 50  0001 C CNN
F 3 "" H 3400 5950 50  0001 C CNN
	1    3400 5950
	1    0    0    -1  
$EndComp
Text Notes 7000 6700 0    25   ~ 0
Note: Need to add screw terminal connectors for wires
Wire Wire Line
	8850 4500 8850 4600
Text GLabel 8850 4600 3    25   Input ~ 0
ADC123_IN2
Wire Wire Line
	8750 4500 8750 4600
Text GLabel 8750 4600 3    25   Input ~ 0
ADC123_IN3
Wire Wire Line
	4950 2100 4950 2000
Text GLabel 4950 2000 1    25   Input ~ 0
ADC3_IN5
Wire Wire Line
	8650 4500 8650 4600
Wire Wire Line
	8550 4500 8550 4600
Text GLabel 8650 4600 3    25   Input ~ 0
DAC_OUT1
Text GLabel 8550 4600 3    25   Input ~ 0
DAC_OUT2
Wire Wire Line
	8150 4500 8150 4600
Wire Wire Line
	8050 4500 8050 4600
Text GLabel 8150 4600 3    25   Input ~ 0
USART1_TX
Text GLabel 8050 4600 3    25   Input ~ 0
USART1_RX
Wire Wire Line
	5050 4500 5050 4600
Wire Wire Line
	4950 4500 4950 4600
Text GLabel 5050 4600 3    25   Input ~ 0
USART6_TX
Text GLabel 4950 4600 3    25   Input ~ 0
USART6_RX
Wire Wire Line
	3450 4500 3450 4600
Wire Wire Line
	3350 4500 3350 4600
Text GLabel 3350 4600 3    25   Input ~ 0
USART2_RX
Text GLabel 3450 4600 3    25   Input ~ 0
USART2_TX
Wire Wire Line
	6750 4500 6750 4600
Wire Wire Line
	6650 4500 6650 4600
Text GLabel 6750 4600 3    25   Input ~ 0
I2C1_SCL
Text GLabel 6650 4600 3    25   Input ~ 0
I2C1_SDA
Wire Wire Line
	8450 4500 8450 4600
Wire Wire Line
	8350 4500 8350 4600
Wire Wire Line
	7050 4500 7050 4600
Wire Wire Line
	3250 2100 3250 1950
Wire Wire Line
	3150 2100 3150 1950
Text GLabel 3250 1950 1    25   Input ~ 0
UART5_RX
Text GLabel 3150 1950 1    25   Input ~ 0
UART5_TX
Wire Wire Line
	6350 4500 6350 4600
Text GLabel 6350 4600 3    25   Input ~ 0
USART3_TX
Wire Wire Line
	5150 4500 5150 4600
Text GLabel 5150 4600 3    25   Input ~ 0
USART3_RX
Text Notes 7000 6800 0    25   ~ 0
Note: Need to check how to connect Vref pin for MCU DAC\n
Wire Wire Line
	7350 4500 7350 4600
Wire Wire Line
	7250 4500 7250 4600
Wire Wire Line
	6950 4500 6950 4600
Wire Wire Line
	6850 4500 6850 4600
Text GLabel 7350 4600 3    25   Input ~ 0
TIM3_CH3
Text GLabel 7250 4600 3    25   Input ~ 0
TIM3_CH4
Text GLabel 6950 4600 3    25   Input ~ 0
TIM3_CH1
Text GLabel 9050 4600 3    25   Input ~ 0
TIM2_CH1
Text GLabel 8950 4600 3    25   Input ~ 0
TIM2_CH2
Text GLabel 7150 4600 3    25   Input ~ 0
TIM2_CH4
Wire Wire Line
	9050 4600 9050 4500
Wire Wire Line
	8950 4600 8950 4500
Wire Wire Line
	7150 4600 7150 4500
Wire Wire Line
	7650 4500 7650 4600
Wire Wire Line
	7750 4500 7750 4600
Text GLabel 7750 4600 3    25   Input ~ 0
SWDIO
Text GLabel 7650 4600 3    25   Input ~ 0
SWCLK
Text Notes 7000 6900 0    25   ~ 0
Is there any additional circuitry needed for SWD debug?\n
Text GLabel 3900 5450 1    25   Input ~ 0
I2C1_SDA
Text GLabel 4200 5450 1    25   Input ~ 0
I2C1_SCL
Wire Wire Line
	4200 5450 4200 5600
Wire Wire Line
	3900 5450 3900 5600
$Comp
L Device:R_Small R5
U 1 1 61824A1F
P 3900 5700
F 0 "R5" H 3841 5654 50  0000 R CNN
F 1 "2.2k" H 3841 5745 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3900 5700 50  0001 C CNN
F 3 "~" H 3900 5700 50  0001 C CNN
	1    3900 5700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 61824FE3
P 4200 5700
F 0 "R6" H 4141 5654 50  0000 R CNN
F 1 "2.2k" H 4141 5745 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4200 5700 50  0001 C CNN
F 3 "~" H 4200 5700 50  0001 C CNN
	1    4200 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 5800 3900 5900
Wire Wire Line
	4200 5800 4200 5900
$Comp
L power:+3.3V #PWR0122
U 1 1 61848BF3
P 4200 5900
F 0 "#PWR0122" H 4200 5750 50  0001 C CNN
F 1 "+3.3V" H 4215 6073 50  0000 C CNN
F 2 "" H 4200 5900 50  0001 C CNN
F 3 "" H 4200 5900 50  0001 C CNN
	1    4200 5900
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 618492F1
P 3900 5900
F 0 "#PWR0123" H 3900 5750 50  0001 C CNN
F 1 "+3.3V" H 3915 6073 50  0000 C CNN
F 2 "" H 3900 5900 50  0001 C CNN
F 3 "" H 3900 5900 50  0001 C CNN
	1    3900 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 3800 2100 3800
Wire Wire Line
	2100 3800 2100 3700
Connection ~ 2100 3700
Wire Wire Line
	2100 3700 2150 3700
Wire Notes Line
	7150 5150 11250 5150
Wire Notes Line
	7150 5150 7150 6550
Wire Notes Line
	450  4700 3150 4700
Wire Notes Line
	3150 4700 3150 7800
Wire Notes Line
	8800 500  8800 1750
Wire Notes Line
	8800 1750 11250 1750
Wire Notes Line
	450  6200 5600 6200
Wire Wire Line
	3400 5250 3400 5100
Wire Notes Line
	5600 4850 5600 7800
Wire Notes Line
	3150 4850 5600 4850
Wire Notes Line
	8800 1400 6050 1400
Wire Notes Line
	6050 1400 6050 450 
Text Notes 7200 5250 0    25   ~ 0
Decoupling Capacitors
Text Notes 3800 4950 0    25   ~ 0
Decoupling Capacitors
Text Notes 650  6100 0    25   ~ 0
USB Micro Power + ESD Protection
$Comp
L TB006-508-05BE:TB006-508-05BE J1
U 1 1 6194D225
P 750 1300
F 0 "J1" V 1088 772 50  0000 R CNN
F 1 "TB006-508-05BE" V 1400 1450 50  0000 R CNN
F 2 "SHDR5W100P0X508_1X5_2540X820X1000P" H 1400 1400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 1400 1300 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 1400 1200 50  0001 L CNN "Description"
F 5 "10" H 1400 1100 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 1400 1000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 1400 900 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 1400 800 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 1400 700 50  0001 L CNN "Manufacturer_Part_Number"
	1    750  1300
	0    -1   -1   0   
$EndComp
$Comp
L TB006-508-05BE:TB006-508-05BE J2
U 1 1 6194FA0E
P 1550 1300
F 0 "J2" V 1888 772 50  0000 R CNN
F 1 "TB006-508-05BE" V 2200 1450 50  0000 R CNN
F 2 "SHDR5W100P0X508_1X5_2540X820X1000P" H 2200 1400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 2200 1300 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 2200 1200 50  0001 L CNN "Description"
F 5 "10" H 2200 1100 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 2200 1000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 2200 900 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 2200 800 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 2200 700 50  0001 L CNN "Manufacturer_Part_Number"
	1    1550 1300
	0    -1   -1   0   
$EndComp
$Comp
L TB006-508-05BE:TB006-508-05BE J3
U 1 1 61950C33
P 2350 1300
F 0 "J3" V 2688 772 50  0000 R CNN
F 1 "TB006-508-05BE" V 3000 1450 50  0000 R CNN
F 2 "SHDR5W100P0X508_1X5_2540X820X1000P" H 3000 1400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 3000 1300 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 3000 1200 50  0001 L CNN "Description"
F 5 "10" H 3000 1100 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 3000 1000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 3000 900 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 3000 800 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 3000 700 50  0001 L CNN "Manufacturer_Part_Number"
	1    2350 1300
	0    -1   -1   0   
$EndComp
$Comp
L TB006-508-05BE:TB006-508-05BE J4
U 1 1 61951184
P 3150 1300
F 0 "J4" V 3488 772 50  0000 R CNN
F 1 "TB006-508-05BE" V 3800 1450 50  0000 R CNN
F 2 "SHDR5W100P0X508_1X5_2540X820X1000P" H 3800 1400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 3800 1300 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 3800 1200 50  0001 L CNN "Description"
F 5 "10" H 3800 1100 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 3800 1000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 3800 900 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 3800 800 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 3800 700 50  0001 L CNN "Manufacturer_Part_Number"
	1    3150 1300
	0    -1   -1   0   
$EndComp
Text GLabel 750  1300 3    25   Input ~ 0
TIM2_CH1
Text GLabel 850  1300 3    25   Input ~ 0
TIM2_CH2
Text GLabel 950  1300 3    25   Input ~ 0
ADC123_IN2
Text GLabel 1050 1300 3    25   Input ~ 0
ADC123_IN3
Text GLabel 1150 1300 3    25   Input ~ 0
DAC_OUT1
Text GLabel 1550 1300 3    25   Input ~ 0
DAC_OUT2
Text GLabel 1650 1300 3    25   Input ~ 0
USART1_TX
Text GLabel 1750 1300 3    25   Input ~ 0
USART1_RX
Text GLabel 1850 1300 3    25   Input ~ 0
USART3_TX
Text GLabel 1950 1300 3    25   Input ~ 0
USART3_RX
Text GLabel 2350 1300 3    25   Input ~ 0
TIM3_CH3
Text GLabel 2450 1300 3    25   Input ~ 0
TIM3_CH4
Text GLabel 2550 1300 3    25   Input ~ 0
UART5_RX
Text GLabel 8450 4600 3    25   Input ~ 0
GPIO1
Text GLabel 2650 1300 3    25   Input ~ 0
UART5_TX
Text GLabel 2750 1300 3    25   Input ~ 0
TIM3_CH1
Text GLabel 3150 1300 3    25   Input ~ 0
TIM2_CH4
Text GLabel 3250 1300 3    25   Input ~ 0
ADC3_IN5
Text GLabel 8350 4600 3    25   Input ~ 0
GPIO2
NoConn ~ 2450 4500
NoConn ~ 2550 4500
NoConn ~ 2650 4500
NoConn ~ 2750 4500
NoConn ~ 2850 4500
NoConn ~ 2950 4500
NoConn ~ 3050 4500
NoConn ~ 3150 4500
NoConn ~ 3250 4500
NoConn ~ 3550 4500
NoConn ~ 3650 4500
NoConn ~ 3750 4500
NoConn ~ 3850 4500
NoConn ~ 3950 4500
NoConn ~ 4150 4500
NoConn ~ 4250 4500
NoConn ~ 4350 4500
NoConn ~ 4450 4500
NoConn ~ 4550 4500
NoConn ~ 4650 4500
NoConn ~ 4750 4500
NoConn ~ 4850 4500
NoConn ~ 5650 4500
NoConn ~ 5550 4500
NoConn ~ 5450 4500
NoConn ~ 5350 4500
NoConn ~ 5250 4500
NoConn ~ 5850 4500
NoConn ~ 5950 4500
NoConn ~ 6050 4500
NoConn ~ 6150 4500
NoConn ~ 6250 4500
NoConn ~ 7550 4500
NoConn ~ 7850 4500
NoConn ~ 7950 4500
NoConn ~ 8250 4500
NoConn ~ 2450 2100
NoConn ~ 2550 2100
NoConn ~ 2650 2100
NoConn ~ 2750 2100
NoConn ~ 2850 2100
NoConn ~ 2950 2100
NoConn ~ 3050 2100
NoConn ~ 3350 2100
NoConn ~ 3450 2100
NoConn ~ 3550 2100
NoConn ~ 3650 2100
NoConn ~ 3750 2100
NoConn ~ 3850 2100
NoConn ~ 3950 2100
NoConn ~ 4150 2100
NoConn ~ 4250 2100
NoConn ~ 4350 2100
NoConn ~ 4450 2100
NoConn ~ 4550 2100
NoConn ~ 4650 2100
NoConn ~ 4750 2100
NoConn ~ 4850 2100
NoConn ~ 5050 2100
NoConn ~ 5150 2100
NoConn ~ 5250 2100
NoConn ~ 5350 2100
NoConn ~ 5450 2100
NoConn ~ 5550 2100
NoConn ~ 5650 2100
NoConn ~ 7350 2100
NoConn ~ 7250 2100
NoConn ~ 7150 2100
NoConn ~ 7050 2100
NoConn ~ 6950 2100
NoConn ~ 6850 2100
NoConn ~ 6750 2100
NoConn ~ 6650 2100
NoConn ~ 6550 2100
NoConn ~ 6450 2100
NoConn ~ 6350 2100
NoConn ~ 6250 2100
NoConn ~ 6150 2100
NoConn ~ 6050 2100
NoConn ~ 5950 2100
NoConn ~ 5850 2100
NoConn ~ 6450 4500
NoConn ~ 6550 4500
NoConn ~ 8950 2100
Wire Wire Line
	1250 5100 1450 5100
$Comp
L power:+5V #PWR0124
U 1 1 61CB2605
P 1450 5100
F 0 "#PWR0124" H 1450 4950 50  0001 C CNN
F 1 "+5V" V 1465 5228 50  0000 L CNN
F 2 "" H 1450 5100 50  0001 C CNN
F 3 "" H 1450 5100 50  0001 C CNN
	1    1450 5100
	0    1    1    0   
$EndComp
Text GLabel 3350 1300 3    25   Input ~ 0
GPIO1
Text GLabel 3450 1300 3    25   Input ~ 0
GPIO2
Wire Wire Line
	8350 2100 8350 2050
Wire Wire Line
	8350 2050 8250 2050
$Comp
L power:+5V #PWR0125
U 1 1 61CBCBA9
P 8250 2050
F 0 "#PWR0125" H 8250 1900 50  0001 C CNN
F 1 "+5V" V 8265 2178 50  0000 L CNN
F 2 "" H 8250 2050 50  0001 C CNN
F 3 "" H 8250 2050 50  0001 C CNN
	1    8250 2050
	0    -1   -1   0   
$EndComp
NoConn ~ 7050 4600
Text GLabel 6850 4600 3    25   Input ~ 0
GPIO3
Text GLabel 3550 1300 3    25   Input ~ 0
GPIO3
Wire Wire Line
	9350 3700 9450 3700
Wire Wire Line
	9450 3700 9450 3800
Wire Wire Line
	9450 3700 9450 3600
Connection ~ 9450 3700
Connection ~ 9450 3600
$Comp
L SamacSys_Parts:1715250000 J5
U 1 1 615B6F72
P 3950 1300
F 0 "J5" V 3996 1072 50  0000 R CNN
F 1 "1715250000" V 3905 1072 50  0000 R CNN
F 2 "SamacSys_Parts:1715250000" H 4600 1400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/1715250000.pdf" H 4600 1300 50  0001 L CNN
F 4 "WEIDMULLER - 1715250000 - TERMINAL BLOCK, PCB, 2 POSITION, 22-14AWG" H 4600 1200 50  0001 L CNN "Description"
F 5 "13.8" H 4600 1100 50  0001 L CNN "Height"
F 6 "470-1715250000" H 4600 1000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Weidmuller/1715250000?qs=WJDKaGZ8K%252B711AVQDPCg%2Fw%3D%3D" H 4600 900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Weidmuller" H 4600 800 50  0001 L CNN "Manufacturer_Name"
F 9 "1715250000" H 4600 700 50  0001 L CNN "Manufacturer_Part_Number"
	1    3950 1300
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
