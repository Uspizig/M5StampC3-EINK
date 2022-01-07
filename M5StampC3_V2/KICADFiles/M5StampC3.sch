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
L Connector:Conn_01x12_Male J1
U 1 1 61A24078
P 950 1200
F 0 "J1" H 1058 1789 50  0000 C CNN
F 1 "Conn_01x12_Male" H 1058 1790 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical_SMD_Pin1Left" H 950 1200 50  0001 C CNN
F 3 "~" H 950 1200 50  0001 C CNN
	1    950  1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 61A259E3
P 2850 1300
F 0 "J2" H 2958 1789 50  0000 C CNN
F 1 "Conn_01x10_Male" H 2958 1790 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical_SMD_Pin1Left" H 2850 1300 50  0001 C CNN
F 3 "~" H 2850 1300 50  0001 C CNN
	1    2850 1300
	1    0    0    -1  
$EndComp
Text Label 1150 800  0    50   ~ 0
G4
Text Label 1150 900  0    50   ~ 0
G5
Text Label 1150 1000 0    50   ~ 0
G6
Text Label 1150 1100 0    50   ~ 0
G7
Text Label 1150 1200 0    50   ~ 0
G8
Text Label 1150 1300 0    50   ~ 0
G10
Text Label 1150 1700 0    50   ~ 0
G1
Text Label 1150 1800 0    50   ~ 0
G0
Text Label 3050 1000 0    50   ~ 0
G21
Text Label 3050 1100 0    50   ~ 0
G20
Text Label 3050 1200 0    50   ~ 0
EN
Text Label 3050 1300 0    50   ~ 0
G9
Text Label 3050 1500 0    50   ~ 0
G18
Text Label 3050 1600 0    50   ~ 0
G19
$Comp
L power:GND #PWR0101
U 1 1 61A28643
P 1300 700
F 0 "#PWR0101" H 1300 450 50  0001 C CNN
F 1 "GND" H 1305 527 50  0000 C CNN
F 2 "" H 1300 700 50  0001 C CNN
F 3 "" H 1300 700 50  0001 C CNN
	1    1300 700 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61A28AC0
P 1300 1500
F 0 "#PWR0102" H 1300 1250 50  0001 C CNN
F 1 "GND" V 1305 1372 50  0000 R CNN
F 2 "" H 1300 1500 50  0001 C CNN
F 3 "" H 1300 1500 50  0001 C CNN
	1    1300 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 61A28EA3
P 1350 1400
F 0 "#PWR0103" H 1350 1250 50  0001 C CNN
F 1 "+5V" H 1365 1573 50  0000 C CNN
F 2 "" H 1350 1400 50  0001 C CNN
F 3 "" H 1350 1400 50  0001 C CNN
	1    1350 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 61A29191
P 1350 1600
F 0 "#PWR0104" H 1350 1450 50  0001 C CNN
F 1 "+5V" H 1365 1773 50  0000 C CNN
F 2 "" H 1350 1600 50  0001 C CNN
F 3 "" H 1350 1600 50  0001 C CNN
	1    1350 1600
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 61A293A5
P 3300 1700
F 0 "#PWR0105" H 3300 1550 50  0001 C CNN
F 1 "+5V" H 3400 1700 50  0000 C CNN
F 2 "" H 3300 1700 50  0001 C CNN
F 3 "" H 3300 1700 50  0001 C CNN
	1    3300 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61A2964E
P 3300 1800
F 0 "#PWR0106" H 3300 1550 50  0001 C CNN
F 1 "GND" H 3305 1627 50  0000 C CNN
F 2 "" H 3300 1800 50  0001 C CNN
F 3 "" H 3300 1800 50  0001 C CNN
	1    3300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1700 3050 1700
Wire Wire Line
	3050 1800 3300 1800
Wire Wire Line
	1300 1500 1150 1500
Wire Wire Line
	1150 1600 1350 1600
Wire Wire Line
	1350 1400 1150 1400
$Comp
L power:+3V3 #PWR0107
U 1 1 61A2A510
P 3250 900
F 0 "#PWR0107" H 3250 750 50  0001 C CNN
F 1 "+3V3" H 3265 1073 50  0000 C CNN
F 2 "" H 3250 900 50  0001 C CNN
F 3 "" H 3250 900 50  0001 C CNN
	1    3250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 900  3250 900 
$Comp
L power:GND #PWR0108
U 1 1 61A2B052
P 3300 1400
F 0 "#PWR0108" H 3300 1150 50  0001 C CNN
F 1 "GND" V 3305 1272 50  0000 R CNN
F 2 "" H 3300 1400 50  0001 C CNN
F 3 "" H 3300 1400 50  0001 C CNN
	1    3300 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 1400 3050 1400
Text Label 3300 1000 0    50   ~ 0
Tx0
Text Label 3300 1100 0    50   ~ 0
Rx0
$Comp
L Diode:MBR0530 D3
U 1 1 606B0DD9
P 2900 2850
F 0 "D3" H 2900 3067 50  0000 C CNN
F 1 "MBR0530" H 2900 2976 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2900 2675 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 2900 2850 50  0001 C CNN
	1    2900 2850
	1    0    0    -1  
$EndComp
$Comp
L Diode:MBR0530 D2
U 1 1 606B16C6
P 2900 3150
F 0 "D2" H 2900 2933 50  0000 C CNN
F 1 "MBR0530" H 2900 3024 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2900 2975 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 2900 3150 50  0001 C CNN
	1    2900 3150
	-1   0    0    1   
$EndComp
$Comp
L Diode:MBR0530 D1
U 1 1 606B1BBE
P 2900 3450
F 0 "D1" H 2900 3667 50  0000 C CNN
F 1 "MBR0530" H 2900 3576 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2900 3275 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 2900 3450 50  0001 C CNN
	1    2900 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 606B31F4
P 2900 3900
F 0 "C1" V 2850 3800 50  0000 C CNN
F 1 "105" V 2950 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2938 3750 50  0001 C CNN
F 3 "~" H 2900 3900 50  0001 C CNN
	1    2900 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 606B398F
P 3250 4000
F 0 "C2" V 3200 3900 50  0000 C CNN
F 1 "105" V 3300 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3288 3850 50  0001 C CNN
F 3 "~" H 3250 4000 50  0001 C CNN
	1    3250 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 606B3D6D
P 2900 4100
F 0 "C3" V 2850 4000 50  0000 C CNN
F 1 "105" V 2950 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2938 3950 50  0001 C CNN
F 3 "~" H 2900 4100 50  0001 C CNN
	1    2900 4100
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 606B40CA
P 3250 4200
F 0 "C4" V 3200 4100 50  0000 C CNN
F 1 "105" V 3300 4300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3288 4050 50  0001 C CNN
F 3 "~" H 3250 4200 50  0001 C CNN
	1    3250 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 606B46EC
P 2900 4300
F 0 "C5" V 2850 4200 50  0000 C CNN
F 1 "105" V 2950 4400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2938 4150 50  0001 C CNN
F 3 "~" H 2900 4300 50  0001 C CNN
	1    2900 4300
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 606B49E9
P 3250 4400
F 0 "C6" V 3200 4300 50  0000 C CNN
F 1 "105" V 3300 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3288 4250 50  0001 C CNN
F 3 "~" H 3250 4400 50  0001 C CNN
	1    3250 4400
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 606B4D66
P 2900 4500
F 0 "C11" V 2850 4400 50  0000 C CNN
F 1 "105" V 2950 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2938 4350 50  0001 C CNN
F 3 "~" H 2900 4500 50  0001 C CNN
	1    2900 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 606B5097
P 3000 4800
F 0 "C8" V 2950 4700 50  0000 C CNN
F 1 "104" V 3050 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3038 4650 50  0001 C CNN
F 3 "~" H 3000 4800 50  0001 C CNN
	1    3000 4800
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 606B5680
P 3250 5800
F 0 "C9" V 3200 5700 50  0000 C CNN
F 1 "105" V 3200 5900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3288 5650 50  0001 C CNN
F 3 "~" H 3250 5800 50  0001 C CNN
	1    3250 5800
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 606B5BD0
P 3000 5900
F 0 "C7" V 2950 5800 50  0000 C CNN
F 1 "105" V 2950 6000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3038 5750 50  0001 C CNN
F 3 "~" H 3000 5900 50  0001 C CNN
	1    3000 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 606B606B
P 3250 6000
F 0 "R2" V 3300 6150 50  0000 C CNN
F 1 "0.47R" V 3200 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3180 6000 50  0001 C CNN
F 3 "~" H 3250 6000 50  0001 C CNN
	1    3250 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 606B6A57
P 2950 6100
F 0 "R1" V 3000 6250 50  0000 C CNN
F 1 "10K" V 2900 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2880 6100 50  0001 C CNN
F 3 "~" H 2950 6100 50  0001 C CNN
	1    2950 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L1
U 1 1 606B755B
P 4250 3450
F 0 "L1" V 4440 3450 50  0000 C CNN
F 1 "68uH1A" V 4349 3450 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 4250 3450 50  0001 C CNN
F 3 "C155141" H 4250 3450 50  0001 C CNN
	1    4250 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 606B8743
P 3250 3300
F 0 "C10" H 3135 3254 50  0000 R CNN
F 1 "4.7uF50V" H 3135 3345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3288 3150 50  0001 C CNN
F 3 "~" H 3250 3300 50  0001 C CNN
	1    3250 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C12
U 1 1 606B909F
P 4700 3600
F 0 "C12" H 4585 3554 50  0000 R CNN
F 1 "4.7uF50V" H 4585 3645 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4738 3450 50  0001 C CNN
F 3 "~" H 4700 3600 50  0001 C CNN
	1    4700 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 606B9968
P 4700 3750
F 0 "#PWR0109" H 4700 3500 50  0001 C CNN
F 1 "GND" H 4705 3577 50  0000 C CNN
F 2 "" H 4700 3750 50  0001 C CNN
F 3 "" H 4700 3750 50  0001 C CNN
	1    4700 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 606BA3D7
P 3650 4000
F 0 "#PWR0110" H 3650 3750 50  0001 C CNN
F 1 "GND" H 3655 3827 50  0000 C CNN
F 2 "" H 3650 4000 50  0001 C CNN
F 3 "" H 3650 4000 50  0001 C CNN
	1    3650 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 606BA714
P 2450 2850
F 0 "#PWR0111" H 2450 2600 50  0001 C CNN
F 1 "GND" H 2455 2677 50  0000 C CNN
F 2 "" H 2450 2850 50  0001 C CNN
F 3 "" H 2450 2850 50  0001 C CNN
	1    2450 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 606BAC0C
P 3550 6250
F 0 "#PWR0112" H 3550 6000 50  0001 C CNN
F 1 "GND" H 3555 6077 50  0000 C CNN
F 2 "" H 3550 6250 50  0001 C CNN
F 3 "" H 3550 6250 50  0001 C CNN
	1    3550 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0113
U 1 1 606BDB44
P 2600 4800
F 0 "#PWR0113" H 2750 4750 50  0001 C CNN
F 1 "+3.3VP" H 2615 4973 50  0000 C CNN
F 2 "" H 2600 4800 50  0001 C CNN
F 3 "" H 2600 4800 50  0001 C CNN
	1    2600 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0114
U 1 1 606BDC64
P 4700 3300
F 0 "#PWR0114" H 4850 3250 50  0001 C CNN
F 1 "+3.3VP" H 4715 3473 50  0000 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2850 2450 2850
Wire Wire Line
	3050 2850 3050 3150
Wire Wire Line
	3050 3450 3250 3450
Wire Wire Line
	3250 3150 3050 3150
Connection ~ 3050 3150
Wire Wire Line
	3250 3450 4000 3450
Connection ~ 3250 3450
Wire Wire Line
	4400 3450 4700 3450
Wire Wire Line
	4700 3300 4700 3450
Connection ~ 4700 3450
$Comp
L power:GND #PWR0115
U 1 1 606D480F
P 2050 6350
F 0 "#PWR0115" H 2050 6100 50  0001 C CNN
F 1 "GND" H 2055 6177 50  0000 C CNN
F 2 "" H 2050 6350 50  0001 C CNN
F 3 "" H 2050 6350 50  0001 C CNN
	1    2050 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 607026B5
P 1550 3750
F 0 "#PWR0116" H 1550 3500 50  0001 C CNN
F 1 "GND" H 1555 3577 50  0000 C CNN
F 2 "" H 1550 3750 50  0001 C CNN
F 3 "" H 1550 3750 50  0001 C CNN
	1    1550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3900 2300 3900
Wire Wire Line
	2300 4000 2350 4000
Wire Wire Line
	2300 4100 2750 4100
Wire Wire Line
	2750 4300 2300 4300
Wire Wire Line
	2300 4200 2600 4200
Wire Wire Line
	3100 4400 2300 4400
Wire Wire Line
	2300 4500 2750 4500
Wire Wire Line
	3050 4500 3150 4500
Wire Wire Line
	3500 4500 3500 4400
Wire Wire Line
	3500 3900 3050 3900
Wire Wire Line
	3400 4000 3500 4000
Connection ~ 3500 4000
Wire Wire Line
	3500 4000 3500 3900
Wire Wire Line
	3050 4100 3500 4100
Connection ~ 3500 4100
Wire Wire Line
	3500 4100 3500 4000
Wire Wire Line
	3400 4200 3500 4200
Connection ~ 3500 4200
Wire Wire Line
	3500 4200 3500 4100
Wire Wire Line
	3050 4300 3500 4300
Connection ~ 3500 4300
Wire Wire Line
	3500 4300 3500 4200
Wire Wire Line
	3400 4400 3500 4400
Connection ~ 3500 4400
Wire Wire Line
	3500 4400 3500 4300
Wire Wire Line
	2850 4800 2600 4800
Wire Wire Line
	2300 4800 2450 4800
Connection ~ 2600 4800
Wire Wire Line
	3500 4000 3650 4000
Wire Wire Line
	2800 6100 2450 6100
Wire Wire Line
	2300 6000 2600 6000
Wire Wire Line
	2300 5900 2850 5900
Wire Wire Line
	3100 5800 2300 5800
Wire Wire Line
	3400 5800 3550 5800
Wire Wire Line
	3550 5800 3550 5900
Wire Wire Line
	3150 5900 3550 5900
Connection ~ 3550 5900
Wire Wire Line
	3550 5900 3550 6000
Wire Wire Line
	3400 6000 3550 6000
Connection ~ 3550 6000
Wire Wire Line
	3550 6000 3550 6100
Wire Wire Line
	3100 6100 3550 6100
Connection ~ 3550 6100
Wire Wire Line
	3550 6100 3550 6250
Wire Wire Line
	2350 4000 2350 3150
Wire Wire Line
	2350 3150 2750 3150
Connection ~ 2350 4000
Wire Wire Line
	2350 4000 3100 4000
Wire Wire Line
	2750 3450 2600 3450
Wire Wire Line
	2600 3450 2600 4200
Connection ~ 2600 4200
Wire Wire Line
	2600 4200 3100 4200
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 606B258B
P 5050 4350
F 0 "Q1" H 5254 4396 50  0000 L CNN
F 1 "Si1308" H 5254 4305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 5250 4275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5050 4350 50  0001 L CNN
	1    5050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6000 2600 6500
Connection ~ 2600 6000
Wire Wire Line
	2600 6000 3100 6000
Wire Wire Line
	2450 6600 2450 6100
Connection ~ 2450 6100
Wire Wire Line
	2450 6100 2300 6100
Wire Wire Line
	4000 4150 4000 3450
Connection ~ 4000 3450
Wire Wire Line
	4000 3450 4100 3450
Wire Wire Line
	2300 5500 3550 5500
Wire Wire Line
	3550 5500 3550 5800
Connection ~ 3550 5800
Wire Wire Line
	4000 4150 5150 4150
Wire Wire Line
	4850 4350 4850 6600
Wire Wire Line
	5150 6500 5150 4550
Wire Wire Line
	2600 6500 5150 6500
Wire Wire Line
	2450 6600 4850 6600
Connection ~ 3150 4500
Wire Wire Line
	3150 4500 3500 4500
Wire Wire Line
	3150 4500 3150 4800
Wire Wire Line
	1550 3750 1950 3750
Wire Wire Line
	1950 3750 1950 3800
Wire Wire Line
	2050 6300 2050 6350
$Comp
L Connector2:FPCConn U2
U 1 1 6072C514
P 2300 6050
F 0 "U2" H 1773 7096 50  0000 R CNN
F 1 "FPCConn" H 1773 7005 50  0000 R CNN
F 2 "Connector_FFC-FPC:TE_2-1734839-4_1x24-1MP_P0.5mm_Horizontal" H 2300 6050 50  0001 C CNN
F 3 "" H 2300 6050 50  0001 C CNN
	1    2300 6050
	1    0    0    -1  
$EndComp
Connection ~ 1950 3750
Wire Wire Line
	1950 3750 2050 3750
Wire Wire Line
	2050 3800 2050 3750
Wire Wire Line
	1950 6300 2050 6300
Text Label 1550 900  0    50   ~ 0
EPD_RST
Text Label 1550 1000 0    50   ~ 0
EPD_DC
Text Label 1550 1100 0    50   ~ 0
EPD_CS
Text Label 1550 1200 0    50   ~ 0
EPD_CLK
Text Label 1550 1300 0    50   ~ 0
EPD_MOSI
Text Label 4200 4900 0    50   ~ 0
EPD_MOSI
Text Label 4200 5000 0    50   ~ 0
EPD_CLK
Text Label 4200 5100 0    50   ~ 0
EPD_CS
Text Label 4200 5200 0    50   ~ 0
EPD_DC
Text Label 4200 5300 0    50   ~ 0
EPD_RST
Text Label 4200 5400 0    50   ~ 0
EPD_BUSY
Text Notes 950  4650 0    50   ~ 0
E-Paper\nIO17 MOSI\nIO18 CLK\nIO19 CS\nIO21 DC\nIO22 RST\nIO23 BUSY
Wire Wire Line
	2300 4600 3500 4600
Wire Wire Line
	3500 4600 3500 4500
Connection ~ 3500 4500
Text Label 3450 1500 0    50   ~ 0
D-
Text Label 3450 1600 0    50   ~ 0
D+
Wire Wire Line
	3300 1000 3050 1000
Wire Wire Line
	3300 1100 3050 1100
Wire Wire Line
	3450 1500 3050 1500
Wire Wire Line
	3450 1600 3050 1600
Wire Wire Line
	2300 5300 4200 5300
Wire Wire Line
	2300 5400 4200 5400
Wire Wire Line
	2300 4900 4200 4900
Wire Wire Line
	2300 5000 4200 5000
Wire Wire Line
	2300 5100 4200 5100
Wire Wire Line
	2300 5200 4200 5200
Text Label 1550 800  0    50   ~ 0
EPD_BUSY
Wire Wire Line
	1550 800  1150 800 
Wire Wire Line
	1550 900  1150 900 
Wire Wire Line
	1550 1000 1150 1000
Wire Wire Line
	1550 1100 1150 1100
Wire Wire Line
	2300 4700 2450 4700
Wire Wire Line
	2450 4700 2450 4800
Connection ~ 2450 4800
Wire Wire Line
	2450 4800 2600 4800
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 61A59243
P 5950 1350
F 0 "J3" H 6058 1639 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6058 1640 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5950 1350 50  0001 C CNN
F 3 "~" H 5950 1350 50  0001 C CNN
	1    5950 1350
	1    0    0    -1  
$EndComp
Text Label 6150 1250 0    50   ~ 0
SD_CS
Text Label 6150 1350 0    50   ~ 0
SD_MOSI
Text Label 6150 1450 0    50   ~ 0
SD_CLK
Text Label 6150 1550 0    50   ~ 0
SD_MISO
$Comp
L power:GND #PWR0118
U 1 1 61A5B9EB
P 6150 1650
F 0 "#PWR0118" H 6150 1400 50  0001 C CNN
F 1 "GND" H 6155 1477 50  0000 C CNN
F 2 "" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0001 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
Text Label 2000 1300 0    50   ~ 0
SD_MOSI
Text Label 2000 1200 0    50   ~ 0
SD_CLK
Text Label 1550 1800 0    50   ~ 0
SD_CS
Text Label 1550 1700 0    50   ~ 0
SD_MISO
Wire Wire Line
	1550 1800 1150 1800
Wire Wire Line
	1550 1700 1150 1700
Wire Wire Line
	1150 1300 2000 1300
Wire Wire Line
	1150 1200 2000 1200
$Comp
L power:+3V3 #PWR0119
U 1 1 61A87074
P 5100 3300
F 0 "#PWR0119" H 5100 3150 50  0001 C CNN
F 1 "+3V3" H 5115 3473 50  0000 C CNN
F 2 "" H 5100 3300 50  0001 C CNN
F 3 "" H 5100 3300 50  0001 C CNN
	1    5100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3450 5100 3450
Wire Wire Line
	5100 3450 5100 3300
$Comp
L Regulator_Linear:TPS72201 U1
U 1 1 61A9CC39
P 5050 1200
F 0 "U1" H 5050 1542 50  0000 C CNN
F 1 "RT9013" H 5050 1451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5050 1900 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps702.pdf" H 5050 900 50  0001 C CNN
	1    5050 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 61A9D6A2
P 4150 1050
F 0 "#PWR0120" H 4150 900 50  0001 C CNN
F 1 "+5V" H 4165 1223 50  0000 C CNN
F 2 "" H 4150 1050 50  0001 C CNN
F 3 "" H 4150 1050 50  0001 C CNN
	1    4150 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61A9ED2E
P 4600 1200
F 0 "R3" V 4650 1350 50  0000 C CNN
F 1 "10K" V 4600 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4530 1200 50  0001 C CNN
F 3 "~" H 4600 1200 50  0001 C CNN
	1    4600 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C13
U 1 1 61A9F8A5
P 4150 1300
F 0 "C13" H 4035 1254 50  0000 R CNN
F 1 "100nF" H 4035 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4188 1150 50  0001 C CNN
F 3 "~" H 4150 1300 50  0001 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61AA0CDD
P 5700 1250
F 0 "C14" H 5585 1204 50  0000 R CNN
F 1 "100n" H 5585 1295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 1100 50  0001 C CNN
F 3 "~" H 5700 1250 50  0001 C CNN
	1    5700 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0121
U 1 1 61AA1DDC
P 5700 1100
F 0 "#PWR0121" H 5700 950 50  0001 C CNN
F 1 "+3.3VA" H 5715 1273 50  0000 C CNN
F 2 "" H 5700 1100 50  0001 C CNN
F 3 "" H 5700 1100 50  0001 C CNN
	1    5700 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61AA2817
P 4150 1450
F 0 "#PWR0122" H 4150 1200 50  0001 C CNN
F 1 "GND" V 4155 1322 50  0000 R CNN
F 2 "" H 4150 1450 50  0001 C CNN
F 3 "" H 4150 1450 50  0001 C CNN
	1    4150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61AA4014
P 5050 1500
F 0 "#PWR0123" H 5050 1250 50  0001 C CNN
F 1 "GND" V 5055 1372 50  0000 R CNN
F 2 "" H 5050 1500 50  0001 C CNN
F 3 "" H 5050 1500 50  0001 C CNN
	1    5050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 61AA472A
P 5700 1400
F 0 "#PWR0124" H 5700 1150 50  0001 C CNN
F 1 "GND" V 5705 1272 50  0000 R CNN
F 2 "" H 5700 1400 50  0001 C CNN
F 3 "" H 5700 1400 50  0001 C CNN
	1    5700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1200 4450 1100
Wire Wire Line
	5700 1100 5350 1100
Wire Wire Line
	4450 1100 4750 1100
Connection ~ 5700 1100
Wire Wire Line
	4450 1100 4150 1100
Wire Wire Line
	4150 1100 4150 1150
Connection ~ 4450 1100
Wire Wire Line
	4150 1050 4150 1100
Connection ~ 4150 1100
$Comp
L power:+3.3VA #PWR0117
U 1 1 61ACEB46
P 6150 1150
F 0 "#PWR0117" H 6150 1000 50  0001 C CNN
F 1 "+3.3VA" H 6165 1323 50  0000 C CNN
F 2 "" H 6150 1150 50  0001 C CNN
F 3 "" H 6150 1150 50  0001 C CNN
	1    6150 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 61AF2439
P 7150 1300
F 0 "J4" H 7258 1589 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7258 1590 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7150 1300 50  0001 C CNN
F 3 "~" H 7150 1300 50  0001 C CNN
	1    7150 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 61AF4DD4
P 7350 1200
F 0 "#PWR0125" H 7350 1050 50  0001 C CNN
F 1 "+5V" H 7365 1373 50  0000 C CNN
F 2 "" H 7350 1200 50  0001 C CNN
F 3 "" H 7350 1200 50  0001 C CNN
	1    7350 1200
	1    0    0    -1  
$EndComp
Text Label 7350 1300 0    50   ~ 0
D-
Text Label 7350 1400 0    50   ~ 0
D+
$Comp
L power:GND #PWR0126
U 1 1 61AF68BF
P 7350 1500
F 0 "#PWR0126" H 7350 1250 50  0001 C CNN
F 1 "GND" H 7355 1327 50  0000 C CNN
F 2 "" H 7350 1500 50  0001 C CNN
F 3 "" H 7350 1500 50  0001 C CNN
	1    7350 1500
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D5
U 1 1 61AFECEB
P 8950 1400
F 0 "D5" H 9294 1446 50  0000 L CNN
F 1 "WS2812B" H 9294 1355 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 9000 1100 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9050 1025 50  0001 L TNN
	1    8950 1400
	1    0    0    -1  
$EndComp
$Comp
L Diode:MBR0530 D4
U 1 1 61B064CD
P 8950 950
F 0 "D4" H 8950 1167 50  0000 C CNN
F 1 "MBR0530" H 8950 1076 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 8950 775 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 8950 950 50  0001 C CNN
	1    8950 950 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 61B080AE
P 8950 800
F 0 "#PWR0127" H 8950 650 50  0001 C CNN
F 1 "+5V" H 8965 973 50  0000 C CNN
F 2 "" H 8950 800 50  0001 C CNN
F 3 "" H 8950 800 50  0001 C CNN
	1    8950 800 
	1    0    0    -1  
$EndComp
Text Label 8500 1400 0    50   ~ 0
G9
Wire Wire Line
	8650 1400 8500 1400
$Comp
L power:GND #PWR0129
U 1 1 61B0E2BE
P 8950 1700
F 0 "#PWR0129" H 8950 1450 50  0001 C CNN
F 1 "GND" V 8955 1572 50  0000 R CNN
F 2 "" H 8950 1700 50  0001 C CNN
F 3 "" H 8950 1700 50  0001 C CNN
	1    8950 1700
	1    0    0    -1  
$EndComp
Text Notes 4850 700  0    50   ~ 0
SD-CARD
Text Notes 7200 700  0    50   ~ 0
USB- Connector
Wire Notes Line
	3750 500  3750 2050
Wire Notes Line
	6800 2050 6800 500 
Wire Notes Line
	8200 2050 8200 500 
Wire Notes Line
	10000 2050 10000 500 
Text Notes 9300 650  0    50   ~ 0
RGB-LED
Wire Notes Line
	500  2050 10000 2050
Text Notes 2850 600  0    50   ~ 0
M5 Stamp C3
Text Notes 900  2450 0    50   ~ 0
E-INK CONNECTOR\nE PAPER
$Comp
L RF_Module:RFM95W-868S2 U3
U 1 1 61D87DBA
P 9200 3550
F 0 "U3" H 9200 4231 50  0000 C CNN
F 1 "RFM95W-868S2" H 9200 4140 50  0000 C CNN
F 2 "tp4056:HOPERF_RFM9XW_SMD_3D" H 5900 5200 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 5900 5200 50  0001 C CNN
	1    9200 3550
	1    0    0    -1  
$EndComp
Text Label 8350 3250 0    50   ~ 0
EPD_CLK
Text Label 8350 3350 0    50   ~ 0
EPD_MOSI
Text Label 8350 3450 0    50   ~ 0
SD_MISO
$Comp
L Device:R R4
U 1 1 61D89BFA
P 8200 3750
F 0 "R4" V 8250 3900 50  0000 C CNN
F 1 "10K" V 8150 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8130 3750 50  0001 C CNN
F 3 "~" H 8200 3750 50  0001 C CNN
	1    8200 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 3250 8350 3250
Wire Wire Line
	8350 3350 8700 3350
Wire Wire Line
	8700 3450 8350 3450
Wire Wire Line
	8700 3750 8350 3750
Text Label 8350 3550 0    50   ~ 0
G9
Wire Wire Line
	8700 3550 8350 3550
$Comp
L power:+3V3 #PWR0130
U 1 1 61DA32EA
P 8050 3750
F 0 "#PWR0130" H 8050 3600 50  0001 C CNN
F 1 "+3V3" H 8065 3923 50  0000 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 61DA42CB
P 9200 4300
F 0 "#PWR0131" H 9200 4050 50  0001 C CNN
F 1 "GND" H 9205 4127 50  0000 C CNN
F 2 "" H 9200 4300 50  0001 C CNN
F 3 "" H 9200 4300 50  0001 C CNN
	1    9200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4150 9100 4300
Wire Wire Line
	9100 4300 9200 4300
Wire Wire Line
	9200 4150 9200 4300
Connection ~ 9200 4300
Wire Wire Line
	9300 4150 9300 4300
Wire Wire Line
	9300 4300 9200 4300
$Comp
L Diode:MBR0530 D6
U 1 1 61DB3761
P 9850 3750
F 0 "D6" H 9850 3967 50  0000 C CNN
F 1 "MBR0530" H 9850 3876 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 9850 3575 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 9850 3750 50  0001 C CNN
	1    9850 3750
	-1   0    0    1   
$EndComp
$Comp
L Diode:MBR0530 D7
U 1 1 61DB5B24
P 10200 3850
F 0 "D7" H 10200 4067 50  0000 C CNN
F 1 "MBR0530" H 10200 3976 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 10200 3675 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 10200 3850 50  0001 C CNN
	1    10200 3850
	-1   0    0    1   
$EndComp
$Comp
L Diode:MBR0530 D8
U 1 1 61DB6966
P 10550 3950
F 0 "D8" H 10550 4167 50  0000 C CNN
F 1 "MBR0530" H 10550 4076 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 10550 3775 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 10550 3950 50  0001 C CNN
	1    10550 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 61DB7614
P 10850 4100
F 0 "R5" V 10900 4250 50  0000 C CNN
F 1 "10K" V 10800 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10780 4100 50  0001 C CNN
F 3 "~" H 10850 4100 50  0001 C CNN
	1    10850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3750 10850 3750
Wire Wire Line
	10850 3750 10850 3850
Wire Wire Line
	10350 3850 10850 3850
Connection ~ 10850 3850
Wire Wire Line
	10850 3850 10850 3950
Wire Wire Line
	10700 3950 10850 3950
Connection ~ 10850 3950
Wire Wire Line
	10050 3850 9700 3850
Wire Wire Line
	9700 3950 10400 3950
$Comp
L Connector:Conn_01x12_Male J5
U 1 1 61DD0094
P 600 1200
F 0 "J5" H 708 1789 50  0000 C CNN
F 1 "Conn_01x12_Male" H 708 1790 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 600 1200 50  0001 C CNN
F 3 "~" H 600 1200 50  0001 C CNN
	1    600  1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J6
U 1 1 61DD1657
P 2500 1300
F 0 "J6" H 2608 1789 50  0000 C CNN
F 1 "Conn_01x10_Male" H 2608 1790 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 2500 1300 50  0001 C CNN
F 3 "~" H 2500 1300 50  0001 C CNN
	1    2500 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0128
U 1 1 61EE5322
P 9200 3050
F 0 "#PWR0128" H 9200 2900 50  0001 C CNN
F 1 "+3.3VA" H 9215 3223 50  0000 C CNN
F 2 "" H 9200 3050 50  0001 C CNN
F 3 "" H 9200 3050 50  0001 C CNN
	1    9200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 800  800  800 
Connection ~ 1150 800 
Wire Wire Line
	1150 900  800  900 
Connection ~ 1150 900 
Wire Wire Line
	1150 700  1300 700 
Wire Wire Line
	800  700  1150 700 
Connection ~ 1150 700 
Wire Wire Line
	1150 1000 800  1000
Connection ~ 1150 1000
Wire Wire Line
	1150 1100 800  1100
Connection ~ 1150 1100
Wire Wire Line
	1150 1200 800  1200
Connection ~ 1150 1200
Wire Wire Line
	1150 1300 800  1300
Connection ~ 1150 1300
Wire Wire Line
	1150 1400 800  1400
Connection ~ 1150 1400
Wire Wire Line
	1150 1500 800  1500
Connection ~ 1150 1500
Wire Wire Line
	1150 1600 800  1600
Connection ~ 1150 1600
Wire Wire Line
	1150 1700 800  1700
Connection ~ 1150 1700
Wire Wire Line
	1150 1800 800  1800
Connection ~ 1150 1800
Wire Wire Line
	3050 900  2700 900 
Connection ~ 3050 900 
Wire Wire Line
	3050 1000 2700 1000
Connection ~ 3050 1000
Wire Wire Line
	3050 1100 2700 1100
Connection ~ 3050 1100
Wire Wire Line
	3050 1200 2700 1200
Wire Wire Line
	3050 1300 2700 1300
Wire Wire Line
	3050 1400 2700 1400
Connection ~ 3050 1400
Wire Wire Line
	3050 1500 2700 1500
Connection ~ 3050 1500
Wire Wire Line
	3050 1600 2700 1600
Connection ~ 3050 1600
Wire Wire Line
	3050 1700 2700 1700
Connection ~ 3050 1700
Wire Wire Line
	3050 1800 2700 1800
Connection ~ 3050 1800
$Comp
L power:GND #PWR?
U 1 1 61F8C8B6
P 10850 4250
F 0 "#PWR?" H 10850 4000 50  0001 C CNN
F 1 "GND" H 10855 4077 50  0000 C CNN
F 2 "" H 10850 4250 50  0001 C CNN
F 3 "" H 10850 4250 50  0001 C CNN
	1    10850 4250
	1    0    0    -1  
$EndComp
Text Label 10850 3750 0    50   ~ 0
G18
Text Label 3250 1500 0    50   ~ 0
DIO
$EndSCHEMATC
