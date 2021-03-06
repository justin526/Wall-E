EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:C C2
U 1 1 614896CC
P 3450 2400
F 0 "C2" V 3702 2400 50  0000 C CNN
F 1 "0.47u" V 3611 2400 50  0000 C CNN
F 2 "C0402C474K9RACTU:CAPC1005X55N" H 3488 2250 50  0001 C CNN
F 3 "~" H 3450 2400 50  0001 C CNN
	1    3450 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 2400 3850 2400
$Comp
L power:GND1 #PWR0102
U 1 1 6148AA8D
P 2350 3150
F 0 "#PWR0102" H 2350 2900 50  0001 C CNN
F 1 "GND1" H 2355 2977 50  0000 C CNN
F 2 "" H 2350 3150 50  0001 C CNN
F 3 "" H 2350 3150 50  0001 C CNN
	1    2350 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 2900 2350 3150
$Comp
L Device:C C1
U 1 1 6148CC77
P 1200 1100
F 0 "C1" V 948 1100 50  0000 C CNN
F 1 "0.22u" V 1039 1100 50  0000 C CNN
F 2 "C0402C224M4RACTU:CAPC1005X55N" H 1238 950 50  0001 C CNN
F 3 "~" H 1200 1100 50  0001 C CNN
	1    1200 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 1100 1650 1100
Wire Wire Line
	1050 1100 1050 1200
Wire Wire Line
	1050 1200 1650 1200
Wire Wire Line
	1650 2300 1300 2300
Wire Wire Line
	1300 2300 1300 2550
Connection ~ 1300 2300
Text Label 700  2300 0    50   ~ 0
12V-
Wire Wire Line
	1050 1200 900  1200
Connection ~ 1050 1200
Wire Wire Line
	900  1200 900  1400
Text Label 900  1200 0    50   ~ 0
12V-
$Comp
L Device:C C6
U 1 1 6148F90F
P 900 1550
F 0 "C6" H 1015 1596 50  0000 L CNN
F 1 "0.01u" H 1015 1505 50  0000 L CNN
F 2 "HMK105B7103KVHFE:CAPC1005X55N" H 938 1400 50  0001 C CNN
F 3 "~" H 900 1550 50  0001 C CNN
	1    900  1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1700 900  1850
Text Label 2350 3050 0    50   ~ 0
AGND
Text Label 3850 2400 0    50   ~ 0
DGND
$Comp
L Device:C C4
U 1 1 6149045E
P 1300 2700
F 0 "C4" H 1415 2746 50  0000 L CNN
F 1 "0.01u" H 1415 2655 50  0000 L CNN
F 2 "HMK105B7103KVHFE:CAPC1005X55N" H 1338 2550 50  0001 C CNN
F 3 "~" H 1300 2700 50  0001 C CNN
	1    1300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2850 1300 3050
Text Label 1300 3050 0    50   ~ 0
AGND
Text Label 950  3250 0    50   ~ 0
AGND
Text Label 3700 1100 1    50   ~ 0
PWM1
Text Label 4150 1500 0    50   ~ 0
PWM2
Wire Wire Line
	3050 1300 3350 1300
Text Label 3350 1300 0    50   ~ 0
nsleep
Wire Wire Line
	3050 1100 3050 1000
$Comp
L Device:C C8
U 1 1 614B3D7E
P 3400 1000
F 0 "C8" V 3148 1000 50  0000 C CNN
F 1 "0.022u" V 3239 1000 50  0000 C CNN
F 2 "C1206C223KMRECTU:CAPC3216X88N" H 3438 850 50  0001 C CNN
F 3 "~" H 3400 1000 50  0001 C CNN
	1    3400 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1000 3250 1000
Wire Wire Line
	3550 1000 3550 1200
Wire Wire Line
	3550 1200 3050 1200
Wire Wire Line
	3050 2300 3100 2300
Wire Wire Line
	1650 1400 1500 1400
Text Label 1500 1400 0    50   ~ 0
M1+
Wire Wire Line
	1650 1600 1500 1600
Text Label 1500 1600 0    50   ~ 0
M1-
Text Label 1500 2200 0    50   ~ 0
AGND
Wire Wire Line
	1650 2400 1500 2400
Wire Wire Line
	1500 2400 1500 2500
Text Label 1500 2500 0    50   ~ 0
DGND
Wire Wire Line
	900  1850 750  1850
Text Label 750  1850 2    50   ~ 0
AGND
Wire Wire Line
	950  2300 700  2300
Wire Wire Line
	1300 2300 950  2300
Connection ~ 950  2300
Wire Wire Line
	950  2300 950  2550
$Comp
L UBT1C101MPD8TD:UBT1C101MPD8TD C3
U 1 1 614C41B8
P 950 2550
F 0 "C3" V 1154 2680 50  0000 L CNN
F 1 "100u" V 1245 2680 50  0000 L CNN
F 2 "CAPPRD350W60D840H1350" H 1300 2600 50  0001 L CNN
F 3 "" H 1300 2500 50  0001 L CNN
F 4 "Aluminum Electrolytic Capacitors - Radial Leaded" H 1300 2400 50  0001 L CNN "Description"
F 5 "13.5" H 1300 2300 50  0001 L CNN "Height"
F 6 "647-UBT1C101MPD8TD" H 1300 2200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Nichicon/UBT1C101MPD8TD?qs=16s%2F1Hm5%252BnesKtrYCNSh9w%3D%3D" H 1300 2100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Nichicon" H 1300 2000 50  0001 L CNN "Manufacturer_Name"
F 9 "UBT1C101MPD8TD" H 1300 1900 50  0001 L CNN "Manufacturer_Part_Number"
	1    950  2550
	0    1    1    0   
$EndComp
Wire Wire Line
	950  3250 950  3050
Wire Wire Line
	3050 2400 3250 2400
$Comp
L Device:R Rnfault1
U 1 1 614D0F4A
P 3200 2650
F 0 "Rnfault1" V 2993 2650 50  0000 C CNN
F 1 "4.7k" V 3084 2650 50  0000 C CNN
F 2 "MCS04020D4701BE000:RESC1005X37N" V 3130 2650 50  0001 C CNN
F 3 "~" H 3200 2650 50  0001 C CNN
	1    3200 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2300 3100 2550
Wire Wire Line
	3100 2550 3050 2550
Wire Wire Line
	3350 2650 3350 2550
Wire Wire Line
	3350 2550 3250 2550
Wire Wire Line
	3250 2550 3250 2400
Connection ~ 3250 2400
Wire Wire Line
	3250 2400 3300 2400
$Comp
L ECE477_motorcontroller-rescue:MAX44284FAUT+T-SamacSys_Parts IC5
U 1 1 614D85C8
P 5350 1450
F 0 "IC5" H 5900 1715 50  0000 C CNN
F 1 "MAX44284FAUT+T" H 5900 1624 50  0000 C CNN
F 2 "SOT95P280X145-6N" H 6300 1550 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX44284.pdf" H 6300 1450 50  0001 L CNN
F 4 "Current Sense Amplifiers -0.1~+36V, High Precision, Low Power Current-Sense Amplifier" H 6300 1350 50  0001 L CNN "Description"
F 5 "1.45" H 6300 1250 50  0001 L CNN "Height"
F 6 "700-MAX44284FAUT+T" H 6300 1150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Maxim-Integrated/MAX44284FAUT%2bT/?qs=ZrtEiRxEuI5%2F3wig4C1EWg%3D%3D" H 6300 1050 50  0001 L CNN "Mouser Price/Stock"
F 8 "Maxim Integrated" H 6300 950 50  0001 L CNN "Manufacturer_Name"
F 9 "MAX44284FAUT+T" H 6300 850 50  0001 L CNN "Manufacturer_Part_Number"
	1    5350 1450
	1    0    0    -1  
$EndComp
$Comp
L CSS2H-2512R-L300F:CSS2H-2512R-L300F Rsense1
U 1 1 614D9FF2
P 5550 2100
F 0 "Rsense1" H 5900 2325 50  0000 C CNN
F 1 "CSS2H-2512R-L300F" H 5900 2234 50  0000 C CNN
F 2 "CSS2H2512RL300F" H 6100 2150 50  0001 L CNN
F 3 "http://www.bourns.com/docs/Product-Datasheets/css2h-2512.pdf" H 6100 2050 50  0001 L CNN
F 4 "CURRENT SENSE SHUNT" H 6100 1950 50  0001 L CNN "Description"
F 5 "1.75" H 6100 1850 50  0001 L CNN "Height"
F 6 "652-CSS2H-2512RL300F" H 6100 1750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/CSS2H-2512R-L300F?qs=5aG0NVq1C4z51we9vC1w9A%3D%3D" H 6100 1650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 6100 1550 50  0001 L CNN "Manufacturer_Name"
F 9 "CSS2H-2512R-L300F" H 6100 1450 50  0001 L CNN "Manufacturer_Part_Number"
	1    5550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2100 5200 2100
Wire Wire Line
	5200 2100 5200 1650
Wire Wire Line
	5200 1650 5350 1650
Wire Wire Line
	6250 2100 6600 2100
Wire Wire Line
	6600 2100 6600 1650
Wire Wire Line
	6600 1650 6450 1650
Connection ~ 5200 2100
Wire Wire Line
	5000 2100 5200 2100
Text Label 5000 2100 0    50   ~ 0
12V+
Wire Wire Line
	6600 2100 6850 2100
Connection ~ 6600 2100
Text Label 6850 2100 0    50   ~ 0
12V-
Wire Wire Line
	5350 1450 5200 1450
Wire Wire Line
	5200 1450 5200 1300
Text Label 5200 1300 2    50   ~ 0
3.3V_regulator
Wire Wire Line
	6450 1550 6650 1550
Text Label 6650 1550 0    50   ~ 0
Current_sense
Wire Wire Line
	6450 1400 6450 1450
Wire Wire Line
	6450 1400 6700 1400
Text Label 6700 1400 0    50   ~ 0
nsleep
Wire Wire Line
	5350 1550 5100 1550
Text Label 5100 1550 0    50   ~ 0
AGND
$Comp
L Device:C C12
U 1 1 614F2DEF
P 3400 6700
F 0 "C12" V 3250 6700 50  0000 C CNN
F 1 "0.47u" V 3561 6700 50  0000 C CNN
F 2 "C0402C474K9RACTU:CAPC1005X55N" H 3438 6550 50  0001 C CNN
F 3 "~" H 3400 6700 50  0001 C CNN
	1    3400 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 6700 3800 6800
Wire Wire Line
	3550 6700 3800 6700
$Comp
L power:GND #PWR0103
U 1 1 614F2DF7
P 3800 6800
F 0 "#PWR0103" H 3800 6550 50  0001 C CNN
F 1 "GND" H 3805 6627 50  0000 C CNN
F 2 "" H 3800 6800 50  0001 C CNN
F 3 "" H 3800 6800 50  0001 C CNN
	1    3800 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 614F2E06
P 1150 5400
F 0 "C9" V 898 5400 50  0000 C CNN
F 1 "0.22u" V 989 5400 50  0000 C CNN
F 2 "C0402C224M4RACTU:CAPC1005X55N" H 1188 5250 50  0001 C CNN
F 3 "~" H 1150 5400 50  0001 C CNN
	1    1150 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 5400 1600 5400
Wire Wire Line
	1000 5400 1000 5500
Wire Wire Line
	1000 5500 1600 5500
Wire Wire Line
	1600 6600 1250 6600
Wire Wire Line
	1250 6600 1250 6850
Connection ~ 1250 6600
Wire Wire Line
	1000 5500 850  5500
Connection ~ 1000 5500
Wire Wire Line
	850  5500 850  5700
Text Label 850  5500 0    50   ~ 0
12V-
$Comp
L Device:C C5
U 1 1 614F2E16
P 850 5850
F 0 "C5" H 965 5896 50  0000 L CNN
F 1 "0.01u" H 965 5805 50  0000 L CNN
F 2 "HMK105B7103KVHFE:CAPC1005X55N" H 888 5700 50  0001 C CNN
F 3 "~" H 850 5850 50  0001 C CNN
	1    850  5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6000 850  6150
$Comp
L Device:C C10
U 1 1 614F2E1F
P 1250 7000
F 0 "C10" H 1365 7046 50  0000 L CNN
F 1 "0.01u" H 1365 6955 50  0000 L CNN
F 2 "HMK105B7103KVHFE:CAPC1005X55N" H 1288 6850 50  0001 C CNN
F 3 "~" H 1250 7000 50  0001 C CNN
	1    1250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7150 1250 7350
Text Label 1250 7350 0    50   ~ 0
AGND
Text Label 900  7550 3    50   ~ 0
AGND
Text Label 3750 5700 0    50   ~ 0
PWM3
Text Label 3750 5800 0    50   ~ 0
PWM4
Wire Wire Line
	3000 5600 3300 5600
Text Label 3300 5600 0    50   ~ 0
nsleep
Wire Wire Line
	3000 5400 3000 5300
$Comp
L Device:C C11
U 1 1 614F2E3D
P 3350 5300
F 0 "C11" V 3098 5300 50  0000 C CNN
F 1 "0.022u" V 3189 5300 50  0000 C CNN
F 2 "C1206C223KMRECTU:CAPC3216X88N" H 3388 5150 50  0001 C CNN
F 3 "~" H 3350 5300 50  0001 C CNN
	1    3350 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5300 3200 5300
Wire Wire Line
	3500 5300 3500 5500
Wire Wire Line
	3500 5500 3000 5500
Wire Wire Line
	3000 6600 3050 6600
Wire Wire Line
	1600 5700 1450 5700
Text Label 1450 5700 0    50   ~ 0
M3+
Wire Wire Line
	1600 5900 1450 5900
Text Label 1450 5900 0    50   ~ 0
M3-
Wire Wire Line
	1450 6500 1600 6500
Text Label 1450 6500 0    50   ~ 0
AGND
Wire Wire Line
	1600 6700 1450 6700
Wire Wire Line
	1450 6700 1450 6800
Text Label 1450 6800 0    50   ~ 0
DGND
Wire Wire Line
	850  6150 700  6150
Wire Wire Line
	900  6600 650  6600
Wire Wire Line
	1250 6600 900  6600
Connection ~ 900  6600
Wire Wire Line
	900  6600 900  6850
$Comp
L UBT1C101MPD8TD:UBT1C101MPD8TD C7
U 1 1 614F2E5D
P 900 6850
F 0 "C7" V 1104 6980 50  0000 L CNN
F 1 "100u" V 1195 6980 50  0000 L CNN
F 2 "CAPPRD350W60D840H1350" H 1250 6900 50  0001 L CNN
F 3 "" H 1250 6800 50  0001 L CNN
F 4 "Aluminum Electrolytic Capacitors - Radial Leaded" H 1250 6700 50  0001 L CNN "Description"
F 5 "13.5" H 1250 6600 50  0001 L CNN "Height"
F 6 "647-UBT1C101MPD8TD" H 1250 6500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Nichicon/UBT1C101MPD8TD?qs=16s%2F1Hm5%252BnesKtrYCNSh9w%3D%3D" H 1250 6400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Nichicon" H 1250 6300 50  0001 L CNN "Manufacturer_Name"
F 9 "UBT1C101MPD8TD" H 1250 6200 50  0001 L CNN "Manufacturer_Part_Number"
	1    900  6850
	0    1    1    0   
$EndComp
Wire Wire Line
	900  7550 900  7350
$Comp
L Device:R Rnfault2
U 1 1 614F2E65
P 3150 6950
F 0 "Rnfault2" V 3250 6900 50  0000 C CNN
F 1 "4.7k" V 3034 6950 50  0000 C CNN
F 2 "MCS04020D4701BE000:RESC1005X37N" V 3080 6950 50  0001 C CNN
F 3 "~" H 3150 6950 50  0001 C CNN
	1    3150 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 6600 3050 6850
Wire Wire Line
	3050 6850 3000 6850
Wire Wire Line
	3000 6850 3000 6950
Wire Wire Line
	3300 6950 3300 6850
Wire Wire Line
	3300 6850 3200 6850
Wire Wire Line
	3200 6850 3200 6700
Wire Wire Line
	3200 6700 3250 6700
Wire Wire Line
	1600 5550 1600 5600
Wire Wire Line
	1600 5550 1300 5550
Text Label 1300 5550 3    50   ~ 0
AGND
Text Label 650  6600 0    50   ~ 0
12V-
Text Label 700  6150 2    50   ~ 0
AGND
$Comp
L TPS7B8333QDCYRQ1:TPS7B8333QDCYRQ1 IC6
U 1 1 6164C5B3
P 5000 5650
F 0 "IC6" H 5600 5915 50  0000 C CNN
F 1 "TPS7B8333QDCYRQ1" H 5600 5824 50  0000 C CNN
F 2 "SOT230P700X180-4N" H 6050 5750 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps7b83-q1.pdf?ts=1623315769706&ref_url=https%253A%252F%252Fwww.google.com%252F" H 6050 5650 50  0001 L CNN
F 4 "LDO Voltage Regulators Automotive 150-mA, 40-V, ultra-low-IQ, low-dropout (LDO) linear regulator 4-SOT-223 -40 to 125" H 6050 5550 50  0001 L CNN "Description"
F 5 "1.8" H 6050 5450 50  0001 L CNN "Height"
F 6 "595-TPS7B8333QDCYRQ1" H 6050 5350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TPS7B8333QDCYRQ1?qs=81r%252BiQLm7BRMqU6pzBTdwQ%3D%3D" H 6050 5250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 6050 5150 50  0001 L CNN "Manufacturer_Name"
F 9 "TPS7B8333QDCYRQ1" H 6050 5050 50  0001 L CNN "Manufacturer_Part_Number"
	1    5000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5650 4950 5650
Text Label 4650 5650 0    50   ~ 0
12V-
Wire Wire Line
	5000 5850 4850 5850
Wire Wire Line
	4850 5850 4850 6000
Text Label 4850 6000 3    50   ~ 0
3.3V_regulator
Wire Wire Line
	5000 5750 4800 5750
Text Label 4800 5750 2    50   ~ 0
AGND
Wire Wire Line
	6200 5650 6350 5650
Text Label 6350 5650 0    50   ~ 0
AGND
Wire Notes Line
	4500 800  7500 800 
Wire Notes Line
	7500 800  7500 2250
Wire Notes Line
	7500 2250 4500 2250
Wire Notes Line
	4500 2250 4500 800 
Wire Notes Line
	500  5000 4050 5000
Wire Notes Line
	4050 7750 500  7750
Wire Notes Line
	500  7750 500  5000
Wire Notes Line
	4550 5300 6700 5300
Wire Notes Line
	6700 5300 6700 7600
Wire Notes Line
	6700 7600 4550 7600
Wire Notes Line
	4550 7600 4550 5300
Text Notes 5200 2800 0    50   ~ 0
Connectors\n
Text Notes 2900 3050 0    50   ~ 0
M1, M2 driver\n
Text Notes 3250 7600 0    50   ~ 0
M3, M4 Driver\n
Text Notes 5650 1000 0    50   ~ 0
Current Sensing
Text Notes 7350 7500 0    50   ~ 0
4-Channel Brushed DC Motor Controller
Text Notes 8150 7650 0    50   ~ 0
21st September 2021
Text Notes 8450 7750 0    50   ~ 0
Mohamed Ibrahim
$Comp
L Device:C C14
U 1 1 61612080
P 5050 6250
F 0 "C14" H 5165 6296 50  0000 L CNN
F 1 "10u" H 5165 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 5088 6100 50  0001 C CNN
F 3 "~" H 5050 6250 50  0001 C CNN
	1    5050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6400 5050 6550
Text Label 5050 6550 3    50   ~ 0
AGND
Wire Wire Line
	5050 6100 5050 6000
Wire Wire Line
	5050 6000 4850 6000
Wire Wire Line
	4950 5600 4950 5650
Connection ~ 4950 5650
Wire Wire Line
	4950 5650 4650 5650
$Comp
L Device:C C13
U 1 1 6160201A
P 4950 5450
F 0 "C13" H 5065 5496 50  0000 L CNN
F 1 "0.01u" H 5065 5405 50  0000 L CNN
F 2 "HMK105B7103KVHFE:CAPC1005X55N" H 4988 5300 50  0001 C CNN
F 3 "~" H 4950 5450 50  0001 C CNN
	1    4950 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 5300 4950 5200
Text Label 4950 5200 0    50   ~ 0
AGND
Text Label 6250 3100 2    50   ~ 0
M2+
Text Label 6300 3800 2    50   ~ 0
R_DGND
Wire Wire Line
	6500 3500 6300 3500
Wire Wire Line
	6500 3600 6300 3600
Wire Wire Line
	6500 3700 6300 3700
Wire Wire Line
	6500 3800 6300 3800
Wire Wire Line
	6500 3900 6300 3900
Wire Wire Line
	6500 4250 6300 4250
Wire Wire Line
	6500 4350 6300 4350
Wire Wire Line
	6500 4450 6300 4450
Wire Wire Line
	6500 4550 6300 4550
Wire Wire Line
	6500 4650 6300 4650
Text Label 6300 4250 2    50   ~ 0
M1-
Text Label 6300 4350 2    50   ~ 0
M1+
Text Label 6300 3500 2    50   ~ 0
PWM2
Text Label 6300 3600 2    50   ~ 0
PWM1
Text Label 5750 3750 0    50   ~ 0
M3-
Text Label 5750 3450 0    50   ~ 0
PWM4
Text Label 5750 3350 0    50   ~ 0
PWM3
Text Label 6300 3900 2    50   ~ 0
nsleep
Text Label 6300 4450 2    50   ~ 0
12V+
Wire Wire Line
	1600 5800 1450 5800
Text Label 1450 5800 0    50   ~ 0
M3+
Wire Wire Line
	1600 6000 1450 6000
Text Label 1450 6000 0    50   ~ 0
M3-
Wire Wire Line
	1600 6100 1450 6100
Text Label 1450 6100 0    50   ~ 0
M4-
Wire Wire Line
	1600 6200 1450 6200
Text Label 1450 6200 0    50   ~ 0
M4-
Wire Wire Line
	1600 6300 1450 6300
Wire Wire Line
	1600 6400 1450 6400
Text Label 1450 6300 0    50   ~ 0
M4+
Text Label 1450 6400 0    50   ~ 0
M4+
Wire Wire Line
	1650 1500 1500 1500
$Comp
L Device:R_Small R1
U 1 1 6167570D
P 3700 1300
F 0 "R1" V 3600 1250 50  0000 C CNN
F 1 "1k" H 3900 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3700 1300 50  0001 C CNN
F 3 "~" H 3700 1300 50  0001 C CNN
	1    3700 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61675E07
P 3750 1500
F 0 "R2" V 3500 1650 50  0000 C CNN
F 1 "1k" V 3550 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3750 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3750 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1500 3300 1500
Wire Wire Line
	3050 1400 3200 1400
Wire Wire Line
	3700 1200 3700 1100
Wire Wire Line
	3850 1500 4150 1500
$Comp
L Device:R_Small R5
U 1 1 61710092
P 3250 5700
F 0 "R5" V 3200 5550 50  0000 C CNN
F 1 "1k" V 3200 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 5700 50  0001 C CNN
F 3 "~" H 3250 5700 50  0001 C CNN
	1    3250 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 61710F53
P 3250 5800
F 0 "R6" V 3200 5650 50  0000 C CNN
F 1 "1k" V 3200 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3250 5800 50  0001 C CNN
F 3 "~" H 3250 5800 50  0001 C CNN
	1    3250 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5700 3050 5700
Wire Wire Line
	3350 5700 3750 5700
Wire Wire Line
	3350 5800 3750 5800
$Comp
L TB006-508-05BE:TB006-508-05BE J2
U 1 1 617D81FC
P 6500 2800
F 0 "J2" H 7128 2646 50  0000 L CNN
F 1 "TB006-508-05BE" H 7128 2555 50  0000 L CNN
F 2 "SamacSys_Parts:SHDR5W100P0X508_1X5_2540X820X1000P" H 7150 2900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 7150 2800 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 7150 2700 50  0001 L CNN "Description"
F 5 "10" H 7150 2600 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 7150 2500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 7150 2400 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 7150 2300 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 7150 2200 50  0001 L CNN "Manufacturer_Part_Number"
	1    6500 2800
	1    0    0    -1  
$EndComp
$Comp
L TB006-508-05BE:TB006-508-05BE J3
U 1 1 617EA34B
P 6500 3500
F 0 "J3" H 7128 3346 50  0000 L CNN
F 1 "TB006-508-05BE" H 7128 3255 50  0000 L CNN
F 2 "SamacSys_Parts:SHDR5W100P0X508_1X5_2540X820X1000P" H 7150 3600 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 7150 3500 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 7150 3400 50  0001 L CNN "Description"
F 5 "10" H 7150 3300 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 7150 3200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 7150 3100 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 7150 3000 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 7150 2900 50  0001 L CNN "Manufacturer_Part_Number"
	1    6500 3500
	1    0    0    -1  
$EndComp
$Comp
L TB006-508-05BE:TB006-508-05BE J4
U 1 1 617EA773
P 6500 4250
F 0 "J4" H 7128 4096 50  0000 L CNN
F 1 "TB006-508-05BE" H 7128 4005 50  0000 L CNN
F 2 "SamacSys_Parts:SHDR5W100P0X508_1X5_2540X820X1000P" H 7150 4350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 7150 4250 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 7150 4150 50  0001 L CNN "Description"
F 5 "10" H 7150 4050 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 7150 3950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 7150 3850 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 7150 3750 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 7150 3650 50  0001 L CNN "Manufacturer_Part_Number"
	1    6500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2800 6500 2800
Wire Wire Line
	6250 2900 6500 2900
Wire Wire Line
	6250 3100 6500 3100
Wire Wire Line
	6250 3200 6500 3200
Wire Notes Line
	7900 2650 7900 5050
Wire Notes Line
	4350 2650 4350 5050
Text Label 6300 4550 2    50   ~ 0
M4+
Text Label 6300 4650 2    50   ~ 0
M4-
Text Label 5750 3650 0    50   ~ 0
M3+
Text Label 1500 1500 0    50   ~ 0
M1+
Wire Wire Line
	1650 1700 1500 1700
Wire Wire Line
	1650 1800 1500 1800
Wire Wire Line
	1650 1900 1500 1900
Wire Wire Line
	1650 2000 1500 2000
Wire Wire Line
	1650 2100 1500 2100
Text Label 1500 1700 0    50   ~ 0
M1-
Text Label 1500 1800 0    50   ~ 0
M2-
Text Label 1500 1900 0    50   ~ 0
M2-
Text Label 1500 2000 0    50   ~ 0
M2+
Text Label 1500 2100 0    50   ~ 0
M2+
Wire Wire Line
	1500 2200 1650 2200
Wire Wire Line
	1650 2200 1700 2200
Connection ~ 1650 2200
$Comp
L ECE477_motorcontroller-rescue:DRV8424PPWPR-DRV8424PPWPR IC1
U 1 1 614877CB
P 1650 1100
F 0 "IC1" H 2350 1365 50  0000 C CNN
F 1 "DRV8424PPWPR" H 2350 1274 50  0000 C CNN
F 2 "SOP65P640X120-29N" H 2900 1200 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/drv8424e.pdf?ts=1621759599316&ref_url=https%253A%252F%252Fwww.mouser.de%252F" H 2900 1100 50  0001 L CNN
F 4 "Motor / Motion / Ignition Controllers & Drivers 35-V, 2.5-A bipolar stepper or dual brushed motor driver with integrated current sensing 28-HTSSOP -40 to 125" H 2900 1000 50  0001 L CNN "Description"
F 5 "1.2" H 2900 900 50  0001 L CNN "Height"
F 6 "595-DRV8424PPWPR" H 2900 800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/DRV8424PPWPR?qs=CiayqK2gdcKHVqboqYVmRA%3D%3D" H 2900 700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2900 600 50  0001 L CNN "Manufacturer_Name"
F 9 "DRV8424PPWPR" H 2900 500 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1600 3200 1600
Wire Wire Line
	3200 1600 3200 1400
Connection ~ 3200 1400
Wire Wire Line
	3200 1400 3700 1400
Wire Wire Line
	3050 1700 3300 1700
Wire Wire Line
	3300 1700 3300 1500
Connection ~ 3300 1500
Wire Wire Line
	3300 1500 3650 1500
Wire Wire Line
	3050 2550 3050 2650
Wire Wire Line
	3000 5900 3050 5900
Wire Wire Line
	3050 5900 3050 5700
Connection ~ 3050 5700
Wire Wire Line
	3050 5700 3150 5700
Wire Wire Line
	3000 6000 3100 6000
Wire Wire Line
	3100 6000 3100 5800
Wire Wire Line
	3000 5800 3100 5800
Connection ~ 3100 5800
Wire Wire Line
	3100 5800 3150 5800
Wire Wire Line
	6250 3000 6500 3000
Wire Wire Line
	1650 1300 1500 1300
Text Label 1500 1300 0    50   ~ 0
AGND
NoConn ~ 6300 3700
Text Label 2300 7350 0    50   ~ 0
AGND
Text Label 3800 6700 0    50   ~ 0
DGND
Wire Wire Line
	2300 7450 2300 7200
Wire Notes Line
	4350 5050 7900 5050
Wire Notes Line
	4350 2650 7900 2650
$Comp
L Device:R_POT_Small RV2
U 1 1 616AFFCF
P 3350 3750
F 0 "RV2" H 3290 3704 50  0000 R CNN
F 1 "R_POT_Small" H 3290 3795 50  0000 R CNN
F 2 "25k potentiometer:TRIM_3362P-1-253LF" H 3350 3750 50  0001 C CNN
F 3 "~" H 3350 3750 50  0001 C CNN
	1    3350 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 2100 3150 2100
Wire Wire Line
	3150 2100 3150 2150
Wire Wire Line
	3150 2200 3050 2200
Wire Wire Line
	3150 2150 3250 2150
Connection ~ 3150 2150
Wire Wire Line
	3150 2150 3150 2200
Text Label 3250 2150 0    50   ~ 0
Vref_IC1
Wire Wire Line
	3350 3850 3350 3950
Text Label 3350 3950 0    50   ~ 0
DGND
Wire Wire Line
	3350 3650 3350 3550
Text Label 3050 2400 0    50   ~ 0
DVDD_IC1
$Comp
L ECE477_motorcontroller-rescue:DRV8424PPWPR-DRV8424PPWPR IC2
U 1 1 614F2DE9
P 1600 5400
F 0 "IC2" H 2300 5665 50  0000 C CNN
F 1 "DRV8424PPWPR" H 2300 5574 50  0000 C CNN
F 2 "SOP65P640X120-29N" H 2850 5500 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/drv8424e.pdf?ts=1621759599316&ref_url=https%253A%252F%252Fwww.mouser.de%252F" H 2850 5400 50  0001 L CNN
F 4 "Motor / Motion / Ignition Controllers & Drivers 35-V, 2.5-A bipolar stepper or dual brushed motor driver with integrated current sensing 28-HTSSOP -40 to 125" H 2850 5300 50  0001 L CNN "Description"
F 5 "1.2" H 2850 5200 50  0001 L CNN "Height"
F 6 "595-DRV8424PPWPR" H 2850 5100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/DRV8424PPWPR?qs=CiayqK2gdcKHVqboqYVmRA%3D%3D" H 2850 5000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2850 4900 50  0001 L CNN "Manufacturer_Name"
F 9 "DRV8424PPWPR" H 2850 4800 50  0001 L CNN "Manufacturer_Part_Number"
	1    1600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6400 3100 6400
Wire Wire Line
	3100 6400 3100 6450
Wire Wire Line
	3100 6500 3000 6500
Wire Wire Line
	3100 6450 3150 6450
Connection ~ 3100 6450
Wire Wire Line
	3100 6450 3100 6500
Text Label 3150 6450 0    50   ~ 0
Vref_IC1
$Comp
L Connector:TestPoint TP1
U 1 1 61725DF6
P 1450 4850
F 0 "TP1" V 1500 5200 50  0000 L CNN
F 1 "TestPoint" V 1400 5050 50  0000 L CNN
F 2 "5000_TestPoint:KEYSTONE_5000" H 1650 4850 50  0001 C CNN
F 3 "~" H 1650 4850 50  0001 C CNN
	1    1450 4850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 61739C25
P 800 4900
F 0 "TP3" V 850 5200 50  0000 L CNN
F 1 "TestPoint" V 750 5100 50  0000 L CNN
F 2 "5000_TestPoint:KEYSTONE_5000" H 1000 4900 50  0001 C CNN
F 3 "~" H 1000 4900 50  0001 C CNN
	1    800  4900
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 6173A8C2
P 2550 4850
F 0 "TP2" V 2650 5150 50  0000 L CNN
F 1 "TestPoint" V 2550 5050 50  0000 L CNN
F 2 "5000_TestPoint:KEYSTONE_5000" H 2750 4850 50  0001 C CNN
F 3 "~" H 2750 4850 50  0001 C CNN
	1    2550 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 6300 3300 6300
Wire Wire Line
	3000 6200 3300 6200
Wire Wire Line
	3050 1800 3350 1800
Wire Wire Line
	3050 1900 3350 1900
Wire Wire Line
	3050 2000 3350 2000
Text Label 6250 3200 2    50   ~ 0
AGND
Text Label 6250 2900 2    50   ~ 0
Current_sense
Wire Wire Line
	3350 1800 3350 1850
Wire Wire Line
	3000 6100 3300 6100
Wire Wire Line
	3300 6200 3300 6150
Text Label 6250 2800 2    50   ~ 0
DGND
$Comp
L TB006-508-05BE:TB006-508-05BE J1
U 1 1 618B5FA4
P 5750 3750
F 0 "J1" H 6378 3596 50  0000 L CNN
F 1 "TB006-508-05BE" H 6378 3505 50  0000 L CNN
F 2 "SamacSys_Parts:SHDR5W100P0X508_1X5_2540X820X1000P" H 6400 3850 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB006-508-05BE.pdf" H 6400 3750 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.08 , horizontal, 5 poles, CUI Blue, slotted screw, PCB mount" H 6400 3650 50  0001 L CNN "Description"
F 5 "10" H 6400 3550 50  0001 L CNN "Height"
F 6 "490-TB006-508-05BE" H 6400 3450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-05BE?qs=vLWxofP3U2zWp61Z63O%252BtQ%3D%3D" H 6400 3350 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Inc." H 6400 3250 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-05BE" H 6400 3150 50  0001 L CNN "Manufacturer_Part_Number"
	1    5750 3750
	-1   0    0    1   
$EndComp
Text Label 6250 3000 2    50   ~ 0
M2-
$Comp
L Connector:TestPoint TP4
U 1 1 617F42B9
P 3750 4700
F 0 "TP4" V 3550 4900 50  0000 L CNN
F 1 "TestPoint" V 3650 4800 50  0000 L CNN
F 2 "5000_TestPoint:KEYSTONE_5000" H 3950 4700 50  0001 C CNN
F 3 "~" H 3950 4700 50  0001 C CNN
	1    3750 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6183E5DD
P 3750 4550
F 0 "R4" V 3650 4550 50  0000 C CNN
F 1 "2.2k" V 3850 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3750 4550 50  0001 C CNN
F 3 "~" H 3750 4550 50  0001 C CNN
	1    3750 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6183E99A
P 2400 4350
F 0 "R8" V 2250 4350 50  0000 C CNN
F 1 "10k" V 2550 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2400 4350 50  0001 C CNN
F 3 "~" H 2400 4350 50  0001 C CNN
	1    2400 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 6183EAFE
P 1400 4350
F 0 "R9" V 1500 4350 50  0000 C CNN
F 1 "10k" V 1300 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1400 4350 50  0001 C CNN
F 3 "~" H 1400 4350 50  0001 C CNN
	1    1400 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 6183ED43
P 1400 4700
F 0 "R3" V 1300 4700 50  0000 C CNN
F 1 "2.2k" V 1500 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1400 4700 50  0001 C CNN
F 3 "~" H 1400 4700 50  0001 C CNN
	1    1400 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 6183F079
P 2400 4650
F 0 "R7" V 2300 4600 50  0000 C CNN
F 1 "2.2k" V 2500 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2400 4650 50  0001 C CNN
F 3 "~" H 2400 4650 50  0001 C CNN
	1    2400 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 6183F279
P 3750 4250
F 0 "R10" H 3600 4250 50  0000 C CNN
F 1 "10k" V 3850 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3750 4250 50  0001 C CNN
F 3 "~" H 3750 4250 50  0001 C CNN
	1    3750 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 61842023
P 8300 1100
F 0 "H1" H 8400 1146 50  0000 L CNN
F 1 "MountingHole" H 8400 1055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8300 1100 50  0001 C CNN
F 3 "~" H 8300 1100 50  0001 C CNN
	1    8300 1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61842CAD
P 8300 1300
F 0 "H2" H 8400 1346 50  0000 L CNN
F 1 "MountingHole" H 8400 1255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8300 1300 50  0001 C CNN
F 3 "~" H 8300 1300 50  0001 C CNN
	1    8300 1300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61843220
P 8300 1550
F 0 "H3" H 8400 1596 50  0000 L CNN
F 1 "MountingHole" H 8400 1505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8300 1550 50  0001 C CNN
F 3 "~" H 8300 1550 50  0001 C CNN
	1    8300 1550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6184339C
P 8300 1800
F 0 "H4" H 8200 1754 50  0000 R CNN
F 1 "MountingHole" H 8200 1845 50  0000 R CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 8300 1800 50  0001 C CNN
F 3 "~" H 8300 1800 50  0001 C CNN
	1    8300 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	8300 1800 8500 1800
Wire Wire Line
	8300 1100 8300 1800
Wire Wire Line
	8500 1800 8500 1900
Text Label 8500 1900 0    50   ~ 0
DGND
Wire Wire Line
	8150 1100 8300 1100
Text Label 8150 1100 2    50   ~ 0
DGND
Connection ~ 3200 6700
Wire Wire Line
	3000 6700 3200 6700
Wire Wire Line
	1400 4600 1400 4500
Wire Wire Line
	1400 4800 1400 4850
Wire Wire Line
	1400 4850 1450 4850
Wire Wire Line
	3750 4650 3750 4700
Wire Wire Line
	3750 4350 3750 4450
Wire Wire Line
	3750 4150 3750 4100
$Comp
L power:GND #PWR0101
U 1 1 619541E4
P 3750 4100
F 0 "#PWR0101" H 3750 3850 50  0001 C CNN
F 1 "GND" V 3755 3972 50  0000 R CNN
F 2 "" H 3750 4100 50  0001 C CNN
F 3 "" H 3750 4100 50  0001 C CNN
	1    3750 4100
	0    1    1    0   
$EndComp
Text Label 3300 6300 0    50   ~ 0
IC2_Toff
Text Label 3750 4400 2    50   ~ 0
IC2_Toff
Wire Wire Line
	2400 4750 2400 4850
Wire Wire Line
	2400 4850 2550 4850
Wire Wire Line
	2400 4550 2400 4500
Wire Wire Line
	2400 4250 2400 4150
Wire Wire Line
	2400 4150 2600 4150
$Comp
L power:GND #PWR0105
U 1 1 619A5B3C
P 2600 4150
F 0 "#PWR0105" H 2600 3900 50  0001 C CNN
F 1 "GND" V 2605 4022 50  0000 R CNN
F 2 "" H 2600 4150 50  0001 C CNN
F 3 "" H 2600 4150 50  0001 C CNN
	1    2600 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 4500 2250 4500
Connection ~ 2400 4500
Wire Wire Line
	2400 4500 2400 4450
Text Label 2250 4500 2    50   ~ 0
IC2_Decay
Wire Wire Line
	3300 6150 3400 6150
Connection ~ 3300 6150
Wire Wire Line
	3300 6150 3300 6100
Text Label 3400 6150 0    50   ~ 0
IC2_Decay
$Comp
L power:GND #PWR0106
U 1 1 619C6A4C
P 1550 4150
F 0 "#PWR0106" H 1550 3900 50  0001 C CNN
F 1 "GND" V 1555 4022 50  0000 R CNN
F 2 "" H 1550 4150 50  0001 C CNN
F 3 "" H 1550 4150 50  0001 C CNN
	1    1550 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 4150 1550 4150
Wire Wire Line
	1400 4150 1400 4250
Wire Wire Line
	1400 4500 1200 4500
Connection ~ 1400 4500
Wire Wire Line
	1400 4500 1400 4450
Text Label 1200 4500 2    50   ~ 0
IC1_Decay
Wire Wire Line
	3350 1850 3500 1850
Connection ~ 3350 1850
Wire Wire Line
	3350 1850 3350 1900
Text Label 3500 1850 0    50   ~ 0
IC1_Decay
$Comp
L Device:R_Small R12
U 1 1 61A2FE69
P 700 4700
F 0 "R12" V 600 4700 50  0000 C CNN
F 1 "2.2k" V 800 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 700 4700 50  0001 C CNN
F 3 "~" H 700 4700 50  0001 C CNN
	1    700  4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 61A30217
P 700 4200
F 0 "R11" V 800 4200 50  0000 C CNN
F 1 "10k" V 600 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 700 4200 50  0001 C CNN
F 3 "~" H 700 4200 50  0001 C CNN
	1    700  4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	700  4800 700  4900
Wire Wire Line
	700  4900 800  4900
Wire Wire Line
	700  4600 700  4450
Wire Wire Line
	700  4100 700  3950
Wire Wire Line
	700  3950 800  3950
Wire Wire Line
	700  4450 550  4450
Connection ~ 700  4450
Wire Wire Line
	700  4450 700  4300
Text Label 550  4450 2    50   ~ 0
IC1_Toff
Text Label 3350 2000 0    50   ~ 0
IC1_Toff
$Comp
L Device:R_Small R13
U 1 1 61A7E3DC
P 2250 3800
F 0 "R13" V 2150 3800 50  0000 C CNN
F 1 "10" V 2350 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2250 3800 50  0001 C CNN
F 3 "~" H 2250 3800 50  0001 C CNN
	1    2250 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 3800 2000 3800
Wire Wire Line
	2350 3800 2500 3800
Text Label 2500 3800 0    50   ~ 0
DGND
Wire Notes Line
	450  3350 4050 3350
Wire Notes Line
	4050 3350 4050 7750
Text Notes 1200 3500 0    50   ~ 0
Test-points and Current Control potentiometer
Wire Wire Line
	3250 3750 3100 3750
Text Label 3350 3550 0    50   ~ 0
DVDD_IC1
Text Label 3100 3750 2    50   ~ 0
Vref_IC1
Text Label 2000 3800 2    50   ~ 0
R_DGND
Text Label 800  3950 0    50   ~ 0
GND
NoConn ~ 5750 3550
$Comp
L Device:R_Small R14
U 1 1 616D592C
P 1050 3700
F 0 "R14" V 950 3700 50  0000 C CNN
F 1 "0" V 1150 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1050 3700 50  0001 C CNN
F 3 "~" H 1050 3700 50  0001 C CNN
	1    1050 3700
	0    1    1    0   
$EndComp
Text Label 850  3700 2    50   ~ 0
DGND
Text Label 1300 3700 0    50   ~ 0
AGND
Wire Wire Line
	1150 3700 1300 3700
Wire Wire Line
	950  3700 850  3700
$Comp
L power:GND1 #PWR0104
U 1 1 61714A91
P 2300 7450
F 0 "#PWR0104" H 2300 7200 50  0001 C CNN
F 1 "GND1" H 2305 7277 50  0000 C CNN
F 2 "" H 2300 7450 50  0001 C CNN
F 3 "" H 2300 7450 50  0001 C CNN
	1    2300 7450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
