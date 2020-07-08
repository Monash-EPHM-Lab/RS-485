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
Text GLabel 4250 4750 2    50   Input ~ 0
H_GREEN
Text GLabel 4250 4250 2    50   Input ~ 0
GREEN
Text GLabel 4250 4450 2    50   Input ~ 0
H_BLUE
Text GLabel 4250 4550 2    50   Input ~ 0
BLUE
Text GLabel 4250 4650 2    50   Input ~ 0
H_ORANGE
Text GLabel 4250 4350 2    50   Input ~ 0
ORANGE
Wire Notes Line
	4250 4800 4700 4800
Wire Notes Line
	4700 4800 4700 4150
Wire Notes Line
	4700 4150 4250 4150
Wire Notes Line
	4250 4150 4250 4800
Text Notes 4250 4150 0    50   ~ 0
BOSL BUS
Text GLabel 3350 4550 0    50   Input ~ 0
RS-485_A
Text GLabel 3350 4450 0    50   Input ~ 0
RS-485_B
$Comp
L power:+3V3 #PWR014
U 1 1 5F053676
P 3350 4350
F 0 "#PWR014" H 3350 4200 50  0001 C CNN
F 1 "+3V3" V 3365 4478 50  0000 L CNN
F 2 "" H 3350 4350 50  0001 C CNN
F 3 "" H 3350 4350 50  0001 C CNN
	1    3350 4350
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F05A5B1
P 3350 4250
F 0 "#PWR013" H 3350 4000 50  0001 C CNN
F 1 "GND" V 3355 4122 50  0000 R CNN
F 2 "" H 3350 4250 50  0001 C CNN
F 3 "" H 3350 4250 50  0001 C CNN
	1    3350 4250
	0    1    -1   0   
$EndComp
Text GLabel 3350 4750 0    50   Input ~ 0
WKE\RX
Text GLabel 3350 4650 0    50   Input ~ 0
RST\5V
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
Text GLabel 5700 4500 0    50   Input ~ 0
RS-485_A
Text GLabel 5700 4200 0    50   Input ~ 0
RS-485_B
$Comp
L power:+3V3 #PWR?
U 1 1 5F06068A
P 6450 3850
F 0 "#PWR?" H 6450 3700 50  0001 C CNN
F 1 "+3V3" H 6465 4023 50  0000 C CNN
F 2 "" H 6450 3850 50  0001 C CNN
F 3 "" H 6450 3850 50  0001 C CNN
	1    6450 3850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F060690
P 6450 4700
F 0 "#PWR?" H 6450 4450 50  0001 C CNN
F 1 "GND" H 6455 4527 50  0000 C CNN
F 2 "" H 6450 4700 50  0001 C CNN
F 3 "" H 6450 4700 50  0001 C CNN
	1    6450 4700
	-1   0    0    -1  
$EndComp
Text GLabel 7250 4350 2    50   Input ~ 0
RE
Wire Wire Line
	7250 4350 7150 4350
$Comp
L Device:R R?
U 1 1 5F060699
P 5900 4350
F 0 "R?" H 5970 4396 50  0000 L CNN
F 1 "100 Ω" H 5970 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5830 4350 50  0001 C CNN
F 3 "~" H 5900 4350 50  0001 C CNN
	1    5900 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6150 4200 5900 4200
Connection ~ 5900 4200
Wire Wire Line
	5900 4200 5700 4200
Wire Wire Line
	6150 4350 6050 4350
Wire Wire Line
	6050 4350 6050 4500
Wire Wire Line
	6050 4500 5900 4500
Connection ~ 5900 4500
Wire Wire Line
	5900 4500 5700 4500
$Comp
L local:SN65HVD75 U?
U 1 1 5F0606AF
P 6450 4250
F 0 "U?" H 6200 4700 50  0000 C CNN
F 1 "SN65HVD75" H 6150 4600 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6250 4700 50  0001 C CNN
F 3 "" H 6250 4700 50  0001 C CNN
	1    6450 4250
	-1   0    0    -1  
$EndComp
Text GLabel 7250 4500 2    50   Input ~ 0
DE
$Comp
L Connector:6P6C J?
U 1 1 5F0792E7
P 3650 3600
F 0 "J?" V 3661 4030 50  0000 L CNN
F 1 "6P6C" V 3752 4030 50  0000 L CNN
F 2 "" V 3650 3625 50  0001 C CNN
F 3 "~" V 3650 3625 50  0001 C CNN
	1    3650 3600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F083306
P 3650 5050
F 0 "J?" V 3522 4662 50  0000 R CNN
F 1 "Conn_01x06" V 3613 4662 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 3650 5050 50  0001 C CNN
F 3 "~" H 3650 5050 50  0001 C CNN
	1    3650 5050
	0    -1   1    0   
$EndComp
Wire Wire Line
	3350 4350 3850 4350
Wire Wire Line
	3350 4650 3550 4650
Wire Wire Line
	3350 4550 3650 4550
Wire Wire Line
	3350 4450 3750 4450
Wire Wire Line
	3350 4250 3950 4250
Wire Wire Line
	3350 4750 3450 4750
Wire Wire Line
	3450 4750 3450 4850
Connection ~ 3450 4750
Wire Wire Line
	3450 4750 4250 4750
Wire Wire Line
	3450 4750 3450 4000
Wire Wire Line
	3550 4650 3550 4850
Connection ~ 3550 4650
Wire Wire Line
	3550 4650 4250 4650
Wire Wire Line
	3550 4650 3550 4000
Wire Wire Line
	3650 4000 3650 4550
Connection ~ 3650 4550
Wire Wire Line
	3650 4550 4250 4550
Wire Wire Line
	3650 4550 3650 4850
Wire Wire Line
	3750 4850 3750 4450
Connection ~ 3750 4450
Wire Wire Line
	3750 4450 4250 4450
Wire Wire Line
	3750 4450 3750 4000
Wire Wire Line
	3850 4850 3850 4350
Connection ~ 3850 4350
Wire Wire Line
	3850 4350 4250 4350
Wire Wire Line
	3850 4350 3850 4000
Wire Wire Line
	3950 4000 3950 4250
Connection ~ 3950 4250
Wire Wire Line
	3950 4250 4250 4250
Wire Wire Line
	3950 4250 3950 4850
$Comp
L power:GND #PWR?
U 1 1 5F11F773
P 8550 4000
F 0 "#PWR?" H 8550 3750 50  0001 C CNN
F 1 "GND" V 8555 3872 50  0000 R CNN
F 2 "" H 8550 4000 50  0001 C CNN
F 3 "" H 8550 4000 50  0001 C CNN
	1    8550 4000
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F11FA17
P 8550 4100
F 0 "#PWR?" H 8550 3950 50  0001 C CNN
F 1 "+3V3" V 8565 4228 50  0000 L CNN
F 2 "" H 8550 4100 50  0001 C CNN
F 3 "" H 8550 4100 50  0001 C CNN
	1    8550 4100
	0    1    -1   0   
$EndComp
Text GLabel 8550 4200 2    50   Input ~ 0
RX
Text GLabel 8550 4300 2    50   Input ~ 0
TX
Text GLabel 8550 4500 2    50   Input ~ 0
RST\5V
Text GLabel 8550 4400 2    50   Input ~ 0
WKE
Text GLabel 8550 4600 2    50   Input ~ 0
DE
Text GLabel 8550 4700 2    50   Input ~ 0
RE
Text GLabel 6900 4200 2    50   Input ~ 0
TX
Text GLabel 6900 4050 2    50   Input ~ 0
RX
$Comp
L Device:R R?
U 1 1 5F12BA46
P 7150 4200
F 0 "R?" H 7300 4150 50  0000 R CNN
F 1 "47 kΩ" H 7450 4250 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7080 4200 50  0001 C CNN
F 3 "~" H 7150 4200 50  0001 C CNN
	1    7150 4200
	1    0    0    1   
$EndComp
Connection ~ 7150 4350
Wire Wire Line
	7150 4350 6900 4350
$Comp
L power:+3V3 #PWR?
U 1 1 5F12BD78
P 7150 4050
F 0 "#PWR?" H 7150 3900 50  0001 C CNN
F 1 "+3V3" V 7165 4178 50  0000 L CNN
F 2 "" H 7150 4050 50  0001 C CNN
F 3 "" H 7150 4050 50  0001 C CNN
	1    7150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F12C784
P 7150 4800
F 0 "#PWR?" H 7150 4550 50  0001 C CNN
F 1 "GND" V 7155 4672 50  0000 R CNN
F 2 "" H 7150 4800 50  0001 C CNN
F 3 "" H 7150 4800 50  0001 C CNN
	1    7150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4500 7150 4500
$Comp
L Device:R R?
U 1 1 5F12CFD4
P 7150 4650
F 0 "R?" H 7081 4604 50  0000 R CNN
F 1 "47 kΩ" H 7081 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7080 4650 50  0001 C CNN
F 3 "~" H 7150 4650 50  0001 C CNN
	1    7150 4650
	1    0    0    1   
$EndComp
Connection ~ 7150 4500
Wire Wire Line
	7150 4500 7250 4500
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5F12D726
P 8350 4300
F 0 "J?" H 8268 4817 50  0000 C CNN
F 1 "Conn_01x08" H 8268 4726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 8350 4300 50  0001 C CNN
F 3 "~" H 8350 4300 50  0001 C CNN
	1    8350 4300
	-1   0    0    -1  
$EndComp
Text GLabel 6500 5250 0    50   Input ~ 0
WKE\RX
Text GLabel 6650 5250 2    50   Input ~ 0
WKE
Wire Wire Line
	6500 5250 6650 5250
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5F152BD3
P 7850 4300
F 0 "J?" H 7768 4817 50  0000 C CNN
F 1 "Conn_01x08" H 7768 4726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 7850 4300 50  0001 C CNN
F 3 "~" H 7850 4300 50  0001 C CNN
	1    7850 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 4000 8050 4000
Connection ~ 8550 4000
Wire Wire Line
	8550 4100 8050 4100
Connection ~ 8550 4100
Wire Wire Line
	8550 4200 8050 4200
Wire Wire Line
	8550 4300 8050 4300
Wire Wire Line
	8550 4400 8050 4400
Wire Wire Line
	8550 4500 8050 4500
Wire Wire Line
	8550 4600 8050 4600
Wire Wire Line
	8050 4700 8550 4700
$EndSCHEMATC
