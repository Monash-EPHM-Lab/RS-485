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
Text GLabel 3550 4450 2    50   Input ~ 0
H_GREEN
Text GLabel 3550 3950 2    50   Input ~ 0
GREEN
Text GLabel 3550 4150 2    50   Input ~ 0
H_BLUE
Text GLabel 3550 4250 2    50   Input ~ 0
BLUE
Text GLabel 3550 4350 2    50   Input ~ 0
H_ORANGE
Text GLabel 3550 4050 2    50   Input ~ 0
ORANGE
Wire Notes Line
	3550 3900 4000 3900
Wire Notes Line
	4000 3900 4000 4550
Wire Notes Line
	4000 4550 3550 4550
Wire Notes Line
	3550 4550 3550 3900
Text Notes 3600 4650 0    50   ~ 0
BOSL BUS
Text GLabel 2200 4250 0    50   Input ~ 0
RS-485_A
Text GLabel 2200 4150 0    50   Input ~ 0
RS-485_B
$Comp
L power:+3V3 #PWR01
U 1 1 5F0B12B7
P 2200 4050
F 0 "#PWR01" H 2200 3900 50  0001 C CNN
F 1 "+3V3" V 2215 4178 50  0000 L CNN
F 2 "" H 2200 4050 50  0001 C CNN
F 3 "" H 2200 4050 50  0001 C CNN
	1    2200 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F0B12BE
P 2200 3950
F 0 "#PWR02" H 2200 3700 50  0001 C CNN
F 1 "GND" V 2205 3822 50  0000 R CNN
F 2 "" H 2200 3950 50  0001 C CNN
F 3 "" H 2200 3950 50  0001 C CNN
	1    2200 3950
	0    1    1    0   
$EndComp
Text GLabel 2200 4450 0    50   Input ~ 0
WKE\RX
Text GLabel 2200 4350 0    50   Input ~ 0
RST\5V
Wire Notes Line
	8600 3900 8150 3900
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5F0D9AE5
P 2950 5000
F 0 "J2" H 2850 4400 50  0000 L CNN
F 1 "Conn_01x06" H 2700 4550 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 2950 5000 50  0001 C CNN
F 3 "~" H 2950 5000 50  0001 C CNN
	1    2950 5000
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 5F111457
P 8150 4100
F 0 "#PWR07" H 8150 3950 50  0001 C CNN
F 1 "+3V3" V 8165 4228 50  0000 L CNN
F 2 "" H 8150 4100 50  0001 C CNN
F 3 "" H 8150 4100 50  0001 C CNN
	1    8150 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F111B91
P 8150 4000
F 0 "#PWR08" H 8150 3750 50  0001 C CNN
F 1 "GND" V 8155 3872 50  0000 R CNN
F 2 "" H 8150 4000 50  0001 C CNN
F 3 "" H 8150 4000 50  0001 C CNN
	1    8150 4000
	0    -1   -1   0   
$EndComp
Text GLabel 8150 4300 2    50   Input ~ 0
TX
Text GLabel 8150 4200 2    50   Input ~ 0
RX
Text GLabel 8150 4400 2    50   Input ~ 0
WKE
Text GLabel 8150 4500 2    50   Input ~ 0
RST\5V
Text GLabel 8150 4700 2    50   Input ~ 0
RE
Text GLabel 8150 4600 2    50   Input ~ 0
DE
Text GLabel 5200 4300 0    50   Input ~ 0
RS-485_A
Text GLabel 5200 4000 0    50   Input ~ 0
RS-485_B
$Comp
L power:GND #PWR03
U 1 1 5F116300
P 6000 4650
F 0 "#PWR03" H 6000 4400 50  0001 C CNN
F 1 "GND" H 6005 4477 50  0000 C CNN
F 2 "" H 6000 4650 50  0001 C CNN
F 3 "" H 6000 4650 50  0001 C CNN
	1    6000 4650
	1    0    0    -1  
$EndComp
Text GLabel 6700 4300 2    50   Input ~ 0
RE
Wire Wire Line
	6700 4300 6650 4300
$Comp
L Device:R R1
U 1 1 5F116309
P 5300 4150
F 0 "R1" H 5370 4196 50  0000 L CNN
F 1 "100 Ω" H 5370 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5230 4150 50  0001 C CNN
F 3 "~" H 5300 4150 50  0001 C CNN
	1    5300 4150
	1    0    0    -1  
$EndComp
$Comp
L local:SN65HVD75 U1
U 1 1 5F11631F
P 5950 4250
F 0 "U1" H 5700 4700 50  0000 C CNN
F 1 "SN65HVD75" H 5650 4600 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5750 4700 50  0001 C CNN
F 3 "" H 5750 4700 50  0001 C CNN
	1    5950 4250
	-1   0    0    -1  
$EndComp
Text GLabel 6700 4400 2    50   Input ~ 0
DE
Wire Notes Line
	8150 4750 8600 4750
Wire Notes Line
	8600 3900 8600 4750
Wire Notes Line
	8150 3900 8150 4750
Text GLabel 6450 4200 2    50   Input ~ 0
TX
Text GLabel 6450 4100 2    50   Input ~ 0
RX
Wire Wire Line
	6450 4200 6350 4200
Wire Wire Line
	6350 4100 6450 4100
$Comp
L Device:R R2
U 1 1 5F150CCE
P 6650 4150
F 0 "R2" H 6720 4196 50  0000 L CNN
F 1 "47 kΩ" H 6720 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 4150 50  0001 C CNN
F 3 "~" H 6650 4150 50  0001 C CNN
	1    6650 4150
	1    0    0    1   
$EndComp
Connection ~ 6650 4300
Wire Wire Line
	6650 4300 6350 4300
Wire Wire Line
	6350 4400 6650 4400
$Comp
L Device:R R3
U 1 1 5F150FFB
P 6650 4550
F 0 "R3" H 6720 4596 50  0000 L CNN
F 1 "47 kΩ" H 6720 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 4550 50  0001 C CNN
F 3 "~" H 6650 4550 50  0001 C CNN
	1    6650 4550
	1    0    0    1   
$EndComp
Connection ~ 6650 4400
Wire Wire Line
	6650 4400 6700 4400
$Comp
L power:GND #PWR05
U 1 1 5F1513AA
P 6650 4700
F 0 "#PWR05" H 6650 4450 50  0001 C CNN
F 1 "GND" H 6655 4527 50  0000 C CNN
F 2 "" H 6650 4700 50  0001 C CNN
F 3 "" H 6650 4700 50  0001 C CNN
	1    6650 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5F151D63
P 6650 4000
F 0 "#PWR06" H 6650 3850 50  0001 C CNN
F 1 "+3V3" V 6665 4128 50  0000 L CNN
F 2 "" H 6650 4000 50  0001 C CNN
F 3 "" H 6650 4000 50  0001 C CNN
	1    6650 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 4200 5650 4200
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 5F12F8E9
P 7950 4300
F 0 "J4" H 7868 3675 50  0000 C CNN
F 1 "Conn_01x08" H 7750 3750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7950 4300 50  0001 C CNN
F 3 "~" H 7950 4300 50  0001 C CNN
	1    7950 4300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 5F18ED8A
P 7550 4300
F 0 "J3" H 7468 3675 50  0000 C CNN
F 1 "Conn_01x08" H 7350 3750 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 7550 4300 50  0001 C CNN
F 3 "~" H 7550 4300 50  0001 C CNN
	1    7550 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 4000 8150 4000
Connection ~ 8150 4000
Wire Wire Line
	8150 4100 7750 4100
Connection ~ 8150 4100
Wire Wire Line
	7750 4200 8150 4200
Wire Wire Line
	8150 4300 7750 4300
Wire Wire Line
	7750 4400 8150 4400
Wire Wire Line
	8150 4500 7750 4500
Wire Wire Line
	7750 4600 8150 4600
Wire Wire Line
	8150 4700 7750 4700
$Comp
L Connector:6P6C J1
U 1 1 5F1B1BC5
P 2900 3350
F 0 "J1" V 2911 3780 50  0000 L CNN
F 1 "6P6C" V 3002 3780 50  0000 L CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 2900 3375 50  0001 C CNN
F 3 "~" V 2900 3375 50  0001 C CNN
	1    2900 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3950 3050 3950
Wire Wire Line
	2200 4050 2850 4050
Wire Wire Line
	2200 4150 3000 4150
Wire Wire Line
	2200 4250 2900 4250
Wire Wire Line
	2200 4350 2750 4350
Wire Wire Line
	2200 4450 2700 4450
Wire Wire Line
	2700 4450 2700 3750
Connection ~ 2700 4450
Wire Wire Line
	2700 4450 2950 4450
Wire Wire Line
	2800 3750 2800 4350
Connection ~ 2800 4350
Wire Wire Line
	2800 4350 3550 4350
Wire Wire Line
	2900 3750 2900 4250
Connection ~ 2900 4250
Wire Wire Line
	2900 4250 3250 4250
Wire Wire Line
	3000 3750 3000 4150
Connection ~ 3000 4150
Wire Wire Line
	3000 4150 3150 4150
Wire Wire Line
	3100 3750 3100 4050
Connection ~ 3100 4050
Wire Wire Line
	3100 4050 3550 4050
Wire Wire Line
	3200 3750 3200 3950
Connection ~ 3200 3950
Wire Wire Line
	3200 3950 3550 3950
Wire Wire Line
	2750 4350 2750 4800
Connection ~ 2750 4350
Wire Wire Line
	2750 4350 2800 4350
Wire Wire Line
	2850 4050 2850 4800
Connection ~ 2850 4050
Wire Wire Line
	2850 4050 3100 4050
Wire Wire Line
	2950 4450 2950 4800
Connection ~ 2950 4450
Wire Wire Line
	2950 4450 3550 4450
Wire Wire Line
	3050 3950 3050 4800
Connection ~ 3050 3950
Wire Wire Line
	3050 3950 3200 3950
Wire Wire Line
	3150 4150 3150 4800
Connection ~ 3150 4150
Wire Wire Line
	3150 4150 3550 4150
Wire Wire Line
	3250 4250 3250 4800
Connection ~ 3250 4250
Wire Wire Line
	3250 4250 3550 4250
$Comp
L power:+3V3 #PWR04
U 1 1 5F1162FA
P 6000 3850
F 0 "#PWR04" H 6000 3700 50  0001 C CNN
F 1 "+3V3" H 6015 4023 50  0000 C CNN
F 2 "" H 6000 3850 50  0001 C CNN
F 3 "" H 6000 3850 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
Text GLabel 6150 5100 2    50   Input ~ 0
WKE
Text GLabel 5900 5100 0    50   Input ~ 0
WKE\RX
Wire Wire Line
	5900 5100 6150 5100
Wire Wire Line
	5200 4300 5300 4300
Wire Wire Line
	5200 4000 5300 4000
Wire Wire Line
	5550 4000 5550 4200
Connection ~ 5300 4000
Connection ~ 5300 4300
Wire Wire Line
	5300 4300 5650 4300
Wire Wire Line
	5300 4000 5550 4000
$EndSCHEMATC
