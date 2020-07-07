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
Wire Wire Line
	4250 1000 4050 1000
Wire Wire Line
	4350 1100 4250 1000
Wire Wire Line
	4550 1100 4350 1100
Wire Wire Line
	4250 1100 4350 1000
Wire Wire Line
	4350 1000 4550 1000
Wire Wire Line
	4050 1100 4250 1100
Wire Notes Line
	3800 1650 3250 1650
Wire Notes Line
	3250 800  3800 800 
Wire Notes Line
	4750 1600 5300 1600
Wire Notes Line
	4750 800  5300 800 
Text GLabel 3800 1400 0    50   Input ~ 0
3V3
Text GLabel 4750 1400 2    50   Input ~ 0
3V3
Text GLabel 4750 1500 2    50   Input ~ 0
GND
Text GLabel 3800 1500 0    50   Input ~ 0
GND
Text GLabel 4750 1000 2    50   Input ~ 0
TX
Text GLabel 3800 1000 0    50   Input ~ 0
TX
Text GLabel 4750 1100 2    50   Input ~ 0
RX
Text GLabel 3800 1100 0    50   Input ~ 0
RX
Wire Notes Line
	4550 1000 4550 1100
Wire Notes Line
	4550 1100 4650 1100
Wire Notes Line
	4650 1100 4650 1000
Wire Notes Line
	4650 1000 4550 1000
Wire Notes Line
	4050 1000 4050 1100
Wire Notes Line
	4050 1100 3950 1100
Wire Notes Line
	3950 1100 3950 1000
Wire Notes Line
	3950 1000 4050 1000
Text Notes 4150 1000 0    50   ~ 0
RS-485
Wire Wire Line
	4650 1000 4750 1000
Wire Wire Line
	4650 1100 4750 1100
Wire Wire Line
	3950 1100 3900 1100
Wire Wire Line
	3800 1000 3950 1000
Wire Notes Line
	5300 800  5300 1600
Wire Notes Line
	4750 1600 4750 800 
Wire Notes Line
	3800 800  3800 1650
Wire Notes Line
	3250 1650 3250 800 
Text GLabel 4750 1200 2    50   Input ~ 0
WKE
Text GLabel 3800 1200 0    50   Input ~ 0
WKE
Wire Wire Line
	3900 1100 3900 1200
Connection ~ 3900 1100
Wire Wire Line
	3900 1100 3800 1100
Wire Wire Line
	3800 1200 3900 1200
Connection ~ 3900 1200
Wire Wire Line
	3900 1200 4750 1200
Wire Wire Line
	3800 1300 4750 1300
Wire Wire Line
	3800 1500 4750 1500
Wire Wire Line
	3800 1400 4750 1400
Text Notes 4950 750  0    50   ~ 0
BoSL
Text Notes 3400 750  0    50   ~ 0
Sensor
Wire Notes Line
	4450 850  4150 850 
Wire Notes Line
	4150 850  4200 800 
Wire Notes Line
	4150 850  4200 900 
Wire Notes Line
	4450 850  4400 800 
Wire Notes Line
	4450 850  4400 900 
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 5F03DEC4
P 2600 4500
F 0 "U?" H 2800 2950 50  0000 C CNN
F 1 "ATmega328P-AU" H 3050 3050 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2600 4500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2600 4500 50  0001 C CNN
	1    2600 4500
	1    0    0    -1  
$EndComp
$Comp
L local:SN65HVD75 U?
U 1 1 5F049616
P 4950 5800
F 0 "U?" H 4700 6250 50  0000 C CNN
F 1 "SN65HVD75" H 4650 6150 50  0000 C CNN
F 2 "" H 4750 6250 50  0001 C CNN
F 3 "" H 4750 6250 50  0001 C CNN
	1    4950 5800
	1    0    0    -1  
$EndComp
Text GLabel 6000 3850 2    50   Input ~ 0
H_GREEN
Text GLabel 6000 3950 2    50   Input ~ 0
GREEN
Text GLabel 6000 4050 2    50   Input ~ 0
H_BLUE
Text GLabel 6000 4150 2    50   Input ~ 0
BLUE
Text GLabel 6000 4250 2    50   Input ~ 0
H_ORANGE
Text GLabel 6000 4350 2    50   Input ~ 0
ORANGE
Wire Notes Line
	6000 3800 6450 3800
Wire Notes Line
	6450 3800 6450 4450
Wire Notes Line
	6450 4450 6000 4450
Wire Notes Line
	6000 4450 6000 3800
Text Notes 6050 3800 0    50   ~ 0
BOSL BUS
Wire Wire Line
	6000 3850 5850 3850
Wire Wire Line
	6000 3950 5850 3950
Wire Wire Line
	6000 4050 5850 4050
Wire Wire Line
	6000 4150 5850 4150
Wire Wire Line
	6000 4250 5850 4250
Text GLabel 5850 4150 0    50   Input ~ 0
RS-485_A
Text GLabel 5850 4050 0    50   Input ~ 0
RS-485_B
Text GLabel 5700 6050 2    50   Input ~ 0
RS-485_A
Text GLabel 5700 5750 2    50   Input ~ 0
RS-485_B
$Comp
L power:+3V3 #PWR?
U 1 1 5F053676
P 5850 4350
F 0 "#PWR?" H 5850 4200 50  0001 C CNN
F 1 "+3V3" V 5865 4478 50  0000 L CNN
F 2 "" H 5850 4350 50  0001 C CNN
F 3 "" H 5850 4350 50  0001 C CNN
	1    5850 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 4350 6000 4350
$Comp
L power:GND #PWR?
U 1 1 5F05A5B1
P 5850 3950
F 0 "#PWR?" H 5850 3700 50  0001 C CNN
F 1 "GND" V 5855 3822 50  0000 R CNN
F 2 "" H 5850 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	0    1    1    0   
$EndComp
Text GLabel 5850 3850 0    50   Input ~ 0
WKE\RX
Text GLabel 5850 4250 0    50   Input ~ 0
RST\5V
$Comp
L power:+3V3 #PWR?
U 1 1 5F05AE01
P 4950 5400
F 0 "#PWR?" H 4950 5250 50  0001 C CNN
F 1 "+3V3" H 4965 5573 50  0000 C CNN
F 2 "" H 4950 5400 50  0001 C CNN
F 3 "" H 4950 5400 50  0001 C CNN
	1    4950 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F05B936
P 2600 2900
F 0 "#PWR?" H 2600 2750 50  0001 C CNN
F 1 "+3V3" H 2615 3073 50  0000 C CNN
F 2 "" H 2600 2900 50  0001 C CNN
F 3 "" H 2600 2900 50  0001 C CNN
	1    2600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3000 2600 2950
Wire Wire Line
	2700 3000 2700 2950
Wire Wire Line
	2700 2950 2600 2950
Connection ~ 2600 2950
Wire Wire Line
	2600 2950 2600 2900
$Comp
L power:+3V3 #PWR?
U 1 1 5F05EDE9
P 2000 3300
F 0 "#PWR?" H 2000 3150 50  0001 C CNN
F 1 "+3V3" V 2015 3428 50  0000 L CNN
F 2 "" H 2000 3300 50  0001 C CNN
F 3 "" H 2000 3300 50  0001 C CNN
	1    2000 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F05F419
P 4950 6250
F 0 "#PWR?" H 4950 6000 50  0001 C CNN
F 1 "GND" H 4955 6077 50  0000 C CNN
F 2 "" H 4950 6250 50  0001 C CNN
F 3 "" H 4950 6250 50  0001 C CNN
	1    4950 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F05FAD4
P 2600 6000
F 0 "#PWR?" H 2600 5750 50  0001 C CNN
F 1 "GND" H 2605 5827 50  0000 C CNN
F 2 "" H 2600 6000 50  0001 C CNN
F 3 "" H 2600 6000 50  0001 C CNN
	1    2600 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F060D20
P 3650 4650
F 0 "R?" H 3720 4696 50  0000 L CNN
F 1 "10 kΩ" H 3720 4605 50  0000 L CNN
F 2 "" V 3580 4650 50  0001 C CNN
F 3 "~" H 3650 4650 50  0001 C CNN
	1    3650 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5F061381
P 4000 4800
F 0 "D?" H 3900 4600 50  0000 C CNN
F 1 "1N4148" H 3850 4700 50  0000 C CNN
F 2 "" H 4000 4800 50  0001 C CNN
F 3 "~" H 4000 4800 50  0001 C CNN
	1    4000 4800
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F061DDF
P 3650 4500
F 0 "#PWR?" H 3650 4350 50  0001 C CNN
F 1 "+3V3" H 3665 4673 50  0000 C CNN
F 2 "" H 3650 4500 50  0001 C CNN
F 3 "" H 3650 4500 50  0001 C CNN
	1    3650 4500
	1    0    0    -1  
$EndComp
Text GLabel 4250 4800 2    50   Input ~ 0
RST\5V
Wire Wire Line
	4150 4800 4250 4800
Wire Wire Line
	3850 4800 3650 4800
Wire Wire Line
	3650 4800 3200 4800
Connection ~ 3650 4800
Wire Wire Line
	3900 5000 3450 5000
Text GLabel 4450 5150 2    50   Input ~ 0
WKE\RX
Text GLabel 4300 5900 0    50   Input ~ 0
RE
Text GLabel 4300 6050 0    50   Input ~ 0
DE
Wire Wire Line
	4300 5900 4500 5900
Wire Wire Line
	4300 6050 4500 6050
Text GLabel 3450 3800 2    50   Input ~ 0
DE
Text GLabel 3450 3700 2    50   Input ~ 0
RE
Wire Wire Line
	3200 3700 3450 3700
Wire Wire Line
	3450 3800 3200 3800
$Comp
L Device:R R?
U 1 1 5F081A2F
P 5500 5900
F 0 "R?" H 5570 5946 50  0000 L CNN
F 1 "100 Ω" H 5570 5855 50  0000 L CNN
F 2 "" V 5430 5900 50  0001 C CNN
F 3 "~" H 5500 5900 50  0001 C CNN
	1    5500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5750 5500 5750
Connection ~ 5500 5750
Wire Wire Line
	5500 5750 5700 5750
Wire Wire Line
	5250 5900 5350 5900
Wire Wire Line
	5350 5900 5350 6050
Wire Wire Line
	5350 6050 5500 6050
Connection ~ 5500 6050
Wire Wire Line
	5500 6050 5700 6050
$Comp
L Device:Crystal Y?
U 1 1 5F087A30
P 3950 4050
F 0 "Y?" V 3996 3919 50  0000 R CNN
F 1 "8 MHz" V 3905 3919 50  0000 R CNN
F 2 "" H 3950 4050 50  0001 C CNN
F 3 "~" H 3950 4050 50  0001 C CNN
	1    3950 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 3900 3950 3900
Wire Wire Line
	3950 4200 3700 4200
Wire Wire Line
	3700 4200 3700 4000
Wire Wire Line
	3700 4000 3200 4000
$Comp
L Device:C_Small C?
U 1 1 5F0947A3
P 4050 3900
F 0 "C?" V 4150 4000 50  0000 C CNN
F 1 "22 pF" V 4150 3800 50  0000 C CNN
F 2 "" H 4050 3900 50  0001 C CNN
F 3 "~" H 4050 3900 50  0001 C CNN
	1    4050 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F09710E
P 4050 4200
F 0 "C?" V 3950 4350 50  0000 C CNN
F 1 "22pF" V 3950 4150 50  0000 C CNN
F 2 "" H 4050 4200 50  0001 C CNN
F 3 "~" H 4050 4200 50  0001 C CNN
	1    4050 4200
	0    -1   -1   0   
$EndComp
Connection ~ 3950 4200
Connection ~ 3950 3900
$Comp
L power:GND #PWR?
U 1 1 5F09AF38
P 4150 3900
F 0 "#PWR?" H 4150 3650 50  0001 C CNN
F 1 "GND" V 4155 3772 50  0000 R CNN
F 2 "" H 4150 3900 50  0001 C CNN
F 3 "" H 4150 3900 50  0001 C CNN
	1    4150 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F09B5A0
P 4150 4200
F 0 "#PWR?" H 4150 3950 50  0001 C CNN
F 1 "GND" V 4155 4072 50  0000 R CNN
F 2 "" H 4150 4200 50  0001 C CNN
F 3 "" H 4150 4200 50  0001 C CNN
	1    4150 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5100 3800 5100
Wire Wire Line
	3450 5000 3450 5200
Wire Wire Line
	3450 5200 3200 5200
Connection ~ 3450 5000
Wire Wire Line
	3450 5000 3200 5000
Text Notes 4100 6300 0    50   ~ 0
ensure these work in upload
Wire Wire Line
	4500 5600 3900 5600
Wire Wire Line
	3900 5000 3900 5150
Wire Wire Line
	3800 5750 4500 5750
Wire Wire Line
	3800 5100 3800 5750
$Comp
L 74xGxx:74LVC1G126 U?
U 1 1 5F0AD01F
P 4150 5150
F 0 "U?" H 4050 5150 50  0000 C CNN
F 1 "74LVC1G126" H 3850 5000 50  0000 C CNN
F 2 "" H 4150 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4150 5150 50  0001 C CNN
	1    4150 5150
	-1   0    0    1   
$EndComp
Connection ~ 3900 5150
Wire Wire Line
	3900 5150 3900 5600
Text GLabel 4150 5350 3    50   Input ~ 0
RE
$Comp
L power:+3V3 #PWR?
U 1 1 5F0AEB74
P 4100 5100
F 0 "#PWR?" H 4100 4950 50  0001 C CNN
F 1 "+3V3" H 4115 5273 50  0000 C CNN
F 2 "" H 4100 5100 50  0001 C CNN
F 3 "" H 4100 5100 50  0001 C CNN
	1    4100 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0AEF87
P 4100 5200
F 0 "#PWR?" H 4100 4950 50  0001 C CNN
F 1 "GND" H 4000 5050 50  0000 C CNN
F 2 "" H 4100 5200 50  0001 C CNN
F 3 "" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1000 1600 1000
Wire Wire Line
	1900 1100 1800 1000
Wire Wire Line
	2100 1100 1900 1100
Wire Wire Line
	1800 1100 1900 1000
Wire Wire Line
	1900 1000 2100 1000
Wire Wire Line
	1600 1100 1800 1100
Wire Notes Line
	1350 1650 800  1650
Wire Notes Line
	800  800  1350 800 
Wire Notes Line
	2300 1600 2850 1600
Wire Notes Line
	2300 800  2850 800 
Text GLabel 1350 1400 0    50   Input ~ 0
3V3
Text GLabel 2300 1400 2    50   Input ~ 0
3V3
Text GLabel 2300 1500 2    50   Input ~ 0
GND
Text GLabel 1350 1500 0    50   Input ~ 0
GND
Text GLabel 2300 1000 2    50   Input ~ 0
TX
Text GLabel 1350 1000 0    50   Input ~ 0
TX
Text GLabel 2300 1100 2    50   Input ~ 0
RX
Text GLabel 1350 1100 0    50   Input ~ 0
RX
Wire Notes Line
	2100 1000 2100 1100
Wire Notes Line
	2100 1100 2200 1100
Wire Notes Line
	2200 1100 2200 1000
Wire Notes Line
	2200 1000 2100 1000
Wire Notes Line
	1600 1000 1600 1100
Wire Notes Line
	1600 1100 1500 1100
Wire Notes Line
	1500 1100 1500 1000
Wire Notes Line
	1500 1000 1600 1000
Text Notes 1700 1000 0    50   ~ 0
RS-485
Wire Wire Line
	2200 1000 2300 1000
Wire Wire Line
	2200 1100 2300 1100
Wire Wire Line
	1500 1100 1450 1100
Wire Wire Line
	1350 1000 1500 1000
Wire Notes Line
	2850 800  2850 1600
Wire Notes Line
	2300 1600 2300 800 
Wire Notes Line
	1350 800  1350 1650
Wire Notes Line
	800  1650 800  800 
Text GLabel 2300 1300 2    50   Input ~ 0
RST\5V
Text GLabel 2300 1200 2    50   Input ~ 0
WKE
Text GLabel 1350 1200 0    50   Input ~ 0
WKE
Wire Wire Line
	1450 1100 1450 1200
Connection ~ 1450 1100
Wire Wire Line
	1450 1100 1350 1100
Wire Wire Line
	1350 1200 1450 1200
Connection ~ 1450 1200
Wire Wire Line
	1450 1200 2300 1200
Wire Wire Line
	1350 1300 2300 1300
Wire Wire Line
	1350 1500 2300 1500
Wire Wire Line
	1350 1400 2300 1400
Text Notes 2500 750  0    50   ~ 0
BoSL
Text Notes 950  750  0    50   ~ 0
Sensor
Text Notes 4100 1225 0    50   ~ 0
High - Z
Text Notes 1675 1225 0    50   ~ 0
Low - Z
Wire Wire Line
	6700 1000 6500 1000
Wire Wire Line
	6800 1100 6700 1000
Wire Wire Line
	7000 1100 6800 1100
Wire Wire Line
	6700 1100 6800 1000
Wire Wire Line
	6800 1000 7000 1000
Wire Wire Line
	6500 1100 6700 1100
Wire Notes Line
	6250 1650 5700 1650
Wire Notes Line
	5700 800  6250 800 
Wire Notes Line
	7200 1600 7750 1600
Wire Notes Line
	7200 800  7750 800 
Text GLabel 6250 1400 0    50   Input ~ 0
3V3
Text GLabel 7200 1400 2    50   Input ~ 0
3V3
Text GLabel 7200 1500 2    50   Input ~ 0
GND
Text GLabel 6250 1500 0    50   Input ~ 0
GND
Text GLabel 7200 1000 2    50   Input ~ 0
TX
Text GLabel 6250 1000 0    50   Input ~ 0
TX
Text GLabel 7200 1200 2    50   Input ~ 0
RX
Text GLabel 6250 1100 0    50   Input ~ 0
RX
Wire Notes Line
	7000 1000 7000 1100
Wire Notes Line
	7000 1100 7100 1100
Wire Notes Line
	7100 1100 7100 1000
Wire Notes Line
	7100 1000 7000 1000
Wire Notes Line
	6500 1000 6500 1100
Wire Notes Line
	6500 1100 6400 1100
Wire Notes Line
	6400 1100 6400 1000
Wire Notes Line
	6400 1000 6500 1000
Text Notes 6600 1000 0    50   ~ 0
RS-485
Wire Wire Line
	7100 1000 7200 1000
Wire Wire Line
	7100 1100 7200 1100
Wire Wire Line
	6400 1100 6350 1100
Wire Wire Line
	6250 1000 6400 1000
Wire Notes Line
	7750 800  7750 1600
Wire Notes Line
	7200 1600 7200 800 
Wire Notes Line
	6250 800  6250 1650
Wire Notes Line
	5700 1650 5700 800 
Text GLabel 6250 1200 0    50   Input ~ 0
WKE
Wire Wire Line
	6350 1100 6350 1200
Connection ~ 6350 1100
Wire Wire Line
	6350 1100 6250 1100
Wire Wire Line
	6250 1200 6350 1200
Connection ~ 6350 1200
Wire Wire Line
	6350 1200 7200 1200
Wire Wire Line
	6250 1300 7200 1300
Wire Wire Line
	6250 1500 7200 1500
Wire Wire Line
	6250 1400 7200 1400
Text Notes 7400 750  0    50   ~ 0
BoSL
Text Notes 5850 750  0    50   ~ 0
Sensor
Wire Notes Line
	6900 850  6600 850 
Wire Notes Line
	6900 850  6850 800 
Wire Notes Line
	6900 850  6850 900 
Text GLabel 1350 1300 0    50   Input ~ 0
RST\5V
Text GLabel 3800 1300 0    50   Input ~ 0
RST\5V
Text GLabel 4750 1300 2    50   Input ~ 0
RST\5V
Text GLabel 7200 1300 2    50   Input ~ 0
RST\5V
Text GLabel 6250 1300 0    50   Input ~ 0
RST\5V
$EndSCHEMATC
