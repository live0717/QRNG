EESchema Schematic File Version 4
LIBS:qrng-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "QRNGv1 USB"
Date "2020-05-15"
Rev "1"
Comp "Spooky Manufacturing, LLC"
Comment1 "CERN OSHW License"
Comment2 "(c) 2020"
Comment3 "Noah G. Wood"
Comment4 "Designed By"
$EndDescr
$Sheet
S 12150 2650 1900 2050
U 5EB6BFF0
F0 "rng" 50
F1 "rng_circuit.sch" 50
$EndSheet
Text GLabel 6000 4100 2    50   Input ~ 0
ADC1
Text GLabel 6000 4200 2    50   Input ~ 0
ADC2
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U2
U 1 1 5EB6C852
P 5400 4200
F 0 "U2" H 5350 4000 50  0000 C CNN
F 1 "STM32F103C8Tx" H 5350 3750 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4800 2800 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 5400 4200 50  0001 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J1
U 1 1 5EB6CAAC
P 1050 1500
F 0 "J1" H 1105 1967 50  0000 C CNN
F 1 "USB_A" H 1105 1876 50  0000 C CNN
F 2 "Connector_USB:USB_A_CNCTech_1001-011-01101_Horizontal" H 1200 1450 50  0001 C CNN
F 3 " ~" H 1200 1450 50  0001 C CNN
	1    1050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EB6CB41
P 950 2000
F 0 "#PWR07" H 950 1750 50  0001 C CNN
F 1 "GND" H 955 1827 50  0000 C CNN
F 2 "" H 950 2000 50  0001 C CNN
F 3 "" H 950 2000 50  0001 C CNN
	1    950  2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5EB6CBC2
P 1500 1150
F 0 "#PWR04" H 1500 1000 50  0001 C CNN
F 1 "+5V" H 1515 1323 50  0000 C CNN
F 2 "" H 1500 1150 50  0001 C CNN
F 3 "" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1150 1500 1300
Wire Wire Line
	1500 1300 1350 1300
Wire Wire Line
	950  1900 950  2000
Wire Wire Line
	950  2000 1050 2000
Wire Wire Line
	1050 2000 1050 1900
Connection ~ 950  2000
Text GLabel 1350 1500 2    50   Input ~ 0
USB_D+
Text GLabel 1350 1600 2    50   Input ~ 0
USB_D-
$Comp
L Device:Crystal Y1
U 1 1 5EB6CEC4
P 1050 4750
F 0 "Y1" V 1004 4881 50  0000 L CNN
F 1 "8 MHz" V 1095 4881 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm_HandSoldering" H 1050 4750 50  0001 C CNN
F 3 "~" H 1050 4750 50  0001 C CNN
	1    1050 4750
	0    1    1    0   
$EndComp
Text GLabel 4700 3300 0    50   Input ~ 0
OSC_IN
Text GLabel 4700 3400 0    50   Input ~ 0
OSC_OUT
Text GLabel 6000 5100 2    50   Input ~ 0
USB_D-
Text GLabel 6000 5200 2    50   Input ~ 0
USB_D+
Text GLabel 1050 4100 1    50   Input ~ 0
OSC_IN
Text GLabel 1050 5800 3    50   Input ~ 0
OSC_OUT
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5EB6D06B
P 9150 5600
F 0 "J2" H 9230 5642 50  0000 L CNN
F 1 "Conn_01x03" H 9230 5551 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x03_P3.81mm_Drill1.2mm" H 9150 5600 50  0001 C CNN
F 3 "~" H 9150 5600 50  0001 C CNN
	1    9150 5600
	1    0    0    -1  
$EndComp
Text GLabel 8950 5700 0    50   Input ~ 0
TRACE
Text GLabel 8950 5600 0    50   Input ~ 0
SWCLK
Text GLabel 8950 5500 0    50   Input ~ 0
SWDIO
Text GLabel 4700 4300 0    50   Input ~ 0
TRACE
Text GLabel 6000 5300 2    50   Input ~ 0
SWDIO
Text GLabel 6000 5400 2    50   Input ~ 0
SWCLK
$Comp
L Device:C_Small C12
U 1 1 5EB6D32C
P 1150 4350
F 0 "C12" V 921 4350 50  0000 C CNN
F 1 "30pF" V 1012 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1150 4350 50  0001 C CNN
F 3 "~" H 1150 4350 50  0001 C CNN
	1    1150 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5EB6D372
P 1150 5150
F 0 "C13" V 921 5150 50  0000 C CNN
F 1 "30pF" V 1012 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1150 5150 50  0001 C CNN
F 3 "~" H 1150 5150 50  0001 C CNN
	1    1150 5150
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5EB6D3C2
P 5100 1350
F 0 "C9" H 5192 1396 50  0000 L CNN
F 1 "10uF" H 5192 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5100 1350 50  0001 C CNN
F 3 "~" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117 U1
U 1 1 5EB6D5A9
P 4550 1150
F 0 "U1" H 4550 1392 50  0000 C CNN
F 1 "AMS1117" H 4550 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4550 1350 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4650 900 50  0001 C CNN
	1    4550 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5EB6D62B
P 4000 1350
F 0 "C8" H 4092 1396 50  0000 L CNN
F 1 "10uF" H 4092 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4000 1350 50  0001 C CNN
F 3 "~" H 4000 1350 50  0001 C CNN
	1    4000 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5EB6D6FF
P 3600 1150
F 0 "FB1" V 3363 1150 50  0000 C CNN
F 1 "100ohm @ 100mHz" V 3454 1150 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 3530 1150 50  0001 C CNN
F 3 "~" H 3600 1150 50  0001 C CNN
	1    3600 1150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5EB6D8D1
P 2800 900
F 0 "#PWR03" H 2800 750 50  0001 C CNN
F 1 "+5V" H 2815 1073 50  0000 C CNN
F 2 "" H 2800 900 50  0001 C CNN
F 3 "" H 2800 900 50  0001 C CNN
	1    2800 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5EB6D953
P 2800 1650
F 0 "#PWR05" H 2800 1400 50  0001 C CNN
F 1 "GND" H 2805 1477 50  0000 C CNN
F 2 "" H 2800 1650 50  0001 C CNN
F 3 "" H 2800 1650 50  0001 C CNN
	1    2800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 900  2800 1150
Wire Wire Line
	3700 1150 4000 1150
Wire Wire Line
	5100 1250 5100 1150
Wire Wire Line
	5100 1150 4850 1150
Wire Wire Line
	4000 1250 4000 1150
Connection ~ 4000 1150
Wire Wire Line
	4000 1150 4250 1150
Wire Wire Line
	5100 1450 5100 1550
Wire Wire Line
	5100 1550 4550 1550
Wire Wire Line
	2800 1550 2800 1650
Wire Wire Line
	4000 1550 4000 1450
Connection ~ 4000 1550
Wire Wire Line
	4000 1550 2800 1550
Wire Wire Line
	4550 1450 4550 1550
Connection ~ 4550 1550
Wire Wire Line
	4550 1550 4000 1550
Wire Wire Line
	3500 1150 3150 1150
$Comp
L diode:ZENER D1
U 1 1 5EB6E3D2
P 3000 1150
F 0 "D1" H 3000 934 50  0000 C CNN
F 1 "B5819W" H 3000 1025 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3000 1150 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Zener_diode" H 3000 1150 50  0001 C CNN
	1    3000 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 1150 2800 1150
Text GLabel 4700 3100 0    50   Input ~ 0
BOOT0
Text GLabel 4700 2900 0    50   Input ~ 0
NRST
$Comp
L power:GND #PWR014
U 1 1 5EB6ECDD
P 1250 5150
F 0 "#PWR014" H 1250 4900 50  0001 C CNN
F 1 "GND" H 1255 4977 50  0000 C CNN
F 2 "" H 1250 5150 50  0001 C CNN
F 3 "" H 1250 5150 50  0001 C CNN
	1    1250 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5EB6ED07
P 1250 4350
F 0 "#PWR013" H 1250 4100 50  0001 C CNN
F 1 "GND" H 1255 4177 50  0000 C CNN
F 2 "" H 1250 4350 50  0001 C CNN
F 3 "" H 1250 4350 50  0001 C CNN
	1    1250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4600 1050 4350
Connection ~ 1050 4350
Wire Wire Line
	1050 4350 1050 4100
Connection ~ 1050 5150
Wire Wire Line
	1050 5150 1050 4900
Wire Wire Line
	1050 5150 1050 5400
$Comp
L power:+3.3V #PWR01
U 1 1 5EB6F519
P 5600 850
F 0 "#PWR01" H 5600 700 50  0001 C CNN
F 1 "+3.3V" H 5615 1023 50  0000 C CNN
F 2 "" H 5600 850 50  0001 C CNN
F 3 "" H 5600 850 50  0001 C CNN
	1    5600 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 850  5600 1150
Wire Wire Line
	5600 1150 5100 1150
Connection ~ 5100 1150
$Comp
L power:+3.3V #PWR02
U 1 1 5EB6F7EC
P 6600 850
F 0 "#PWR02" H 6600 700 50  0001 C CNN
F 1 "+3.3V" H 6615 1023 50  0000 C CNN
F 2 "" H 6600 850 50  0001 C CNN
F 3 "" H 6600 850 50  0001 C CNN
	1    6600 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EB6F85C
P 6600 1650
F 0 "#PWR06" H 6600 1400 50  0001 C CNN
F 1 "GND" H 6605 1477 50  0000 C CNN
F 2 "" H 6600 1650 50  0001 C CNN
F 3 "" H 6600 1650 50  0001 C CNN
	1    6600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EB6F91D
P 7100 1250
F 0 "C1" H 7192 1296 50  0000 L CNN
F 1 "4.7uF" H 7192 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7100 1250 50  0001 C CNN
F 3 "~" H 7100 1250 50  0001 C CNN
	1    7100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5EB6FCDA
P 5200 2400
F 0 "#PWR010" H 5200 2250 50  0001 C CNN
F 1 "+3.3V" H 5215 2573 50  0000 C CNN
F 2 "" H 5200 2400 50  0001 C CNN
F 3 "" H 5200 2400 50  0001 C CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2600 5300 2600
Wire Wire Line
	5500 2700 5500 2600
Wire Wire Line
	5400 2600 5400 2700
Connection ~ 5400 2600
Wire Wire Line
	5400 2600 5500 2600
Wire Wire Line
	5300 2700 5300 2600
Connection ~ 5300 2600
Wire Wire Line
	5300 2600 5400 2600
$Comp
L power:+3.3VA #PWR09
U 1 1 5EB7182E
P 9500 2850
F 0 "#PWR09" H 9500 2700 50  0001 C CNN
F 1 "+3.3VA" H 9515 3023 50  0000 C CNN
F 2 "" H 9500 2850 50  0001 C CNN
F 3 "" H 9500 2850 50  0001 C CNN
	1    9500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2850 9500 3100
Wire Wire Line
	5200 2400 5200 2600
Connection ~ 5200 2600
Wire Wire Line
	5200 2600 5200 2700
$Comp
L power:+3.3V #PWR08
U 1 1 5EB728BA
P 7800 2850
F 0 "#PWR08" H 7800 2700 50  0001 C CNN
F 1 "+3.3V" H 7815 3023 50  0000 C CNN
F 2 "" H 7800 2850 50  0001 C CNN
F 3 "" H 7800 2850 50  0001 C CNN
	1    7800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5EB728E5
P 8400 3100
F 0 "FB2" V 8163 3100 50  0000 C CNN
F 1 "100ohm @ 100mHz" V 8254 3100 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 8330 3100 50  0001 C CNN
F 3 "~" H 8400 3100 50  0001 C CNN
	1    8400 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 3100 7800 3100
Wire Wire Line
	7800 3100 7800 2850
$Comp
L Device:C_Small C10
U 1 1 5EB7395C
P 9000 3300
F 0 "C10" H 9092 3346 50  0000 L CNN
F 1 "100nF" H 9092 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9000 3300 50  0001 C CNN
F 3 "~" H 9000 3300 50  0001 C CNN
	1    9000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5EB74874
P 9500 3300
F 0 "C11" H 9592 3346 50  0000 L CNN
F 1 "10nF" H 9592 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9500 3300 50  0001 C CNN
F 3 "~" H 9500 3300 50  0001 C CNN
	1    9500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3200 9000 3100
Wire Wire Line
	8500 3100 9000 3100
Connection ~ 9000 3100
Wire Wire Line
	9000 3100 9500 3100
Connection ~ 9500 3100
Wire Wire Line
	9500 3100 9500 3200
$Comp
L power:GND #PWR012
U 1 1 5EB76693
P 9500 3400
F 0 "#PWR012" H 9500 3150 50  0001 C CNN
F 1 "GND" H 9505 3227 50  0000 C CNN
F 2 "" H 9500 3400 50  0001 C CNN
F 3 "" H 9500 3400 50  0001 C CNN
	1    9500 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EB766DB
P 9000 3400
F 0 "#PWR011" H 9000 3150 50  0001 C CNN
F 1 "GND" H 9005 3227 50  0000 C CNN
F 2 "" H 9000 3400 50  0001 C CNN
F 3 "" H 9000 3400 50  0001 C CNN
	1    9000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5700 5400 5700
Wire Wire Line
	5200 5700 5200 5950
Connection ~ 5200 5700
Connection ~ 5300 5700
Wire Wire Line
	5300 5700 5200 5700
Connection ~ 5400 5700
Wire Wire Line
	5400 5700 5300 5700
$Comp
L Device:C_Small C2
U 1 1 5EB77CA0
P 7600 1250
F 0 "C2" H 7692 1296 50  0000 L CNN
F 1 "100nF" H 7692 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7600 1250 50  0001 C CNN
F 3 "~" H 7600 1250 50  0001 C CNN
	1    7600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EB77CD0
P 8100 1250
F 0 "C3" H 8192 1296 50  0000 L CNN
F 1 "100nF" H 8192 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8100 1250 50  0001 C CNN
F 3 "~" H 8100 1250 50  0001 C CNN
	1    8100 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5EB77D02
P 8600 1250
F 0 "C4" H 8692 1296 50  0000 L CNN
F 1 "100nF" H 8692 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8600 1250 50  0001 C CNN
F 3 "~" H 8600 1250 50  0001 C CNN
	1    8600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EB77D36
P 9100 1250
F 0 "C5" H 9192 1296 50  0000 L CNN
F 1 "100nF" H 9192 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9100 1250 50  0001 C CNN
F 3 "~" H 9100 1250 50  0001 C CNN
	1    9100 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EB77D6C
P 9600 1250
F 0 "C6" H 9692 1296 50  0000 L CNN
F 1 "100nF" H 9692 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9600 1250 50  0001 C CNN
F 3 "~" H 9600 1250 50  0001 C CNN
	1    9600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5EB77DA4
P 10100 1250
F 0 "C7" H 10192 1296 50  0000 L CNN
F 1 "100nF" H 10192 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10100 1250 50  0001 C CNN
F 3 "~" H 10100 1250 50  0001 C CNN
	1    10100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1000 10100 1150
Wire Wire Line
	10100 1500 9600 1500
Wire Wire Line
	6600 1500 6600 1650
Wire Wire Line
	10100 1350 10100 1500
Wire Wire Line
	6600 850  6600 1000
Wire Wire Line
	6600 1000 7100 1000
Wire Wire Line
	7100 1000 7100 1150
Wire Wire Line
	7100 1350 7100 1500
Connection ~ 7100 1000
Wire Wire Line
	7100 1000 7600 1000
Connection ~ 7100 1500
Wire Wire Line
	7100 1500 6600 1500
Wire Wire Line
	7600 1500 7600 1350
Wire Wire Line
	7600 1150 7600 1000
Connection ~ 7600 1500
Wire Wire Line
	7600 1500 7100 1500
Connection ~ 7600 1000
Wire Wire Line
	7600 1000 8100 1000
Wire Wire Line
	8100 1000 8100 1150
Wire Wire Line
	8100 1350 8100 1500
Connection ~ 8100 1000
Wire Wire Line
	8100 1000 8600 1000
Connection ~ 8100 1500
Wire Wire Line
	8100 1500 7600 1500
Wire Wire Line
	8600 1500 8600 1350
Wire Wire Line
	8600 1150 8600 1000
Connection ~ 8600 1500
Wire Wire Line
	8600 1500 8100 1500
Connection ~ 8600 1000
Wire Wire Line
	8600 1000 9100 1000
Wire Wire Line
	9100 1000 9100 1150
Wire Wire Line
	9100 1350 9100 1500
Connection ~ 9100 1000
Wire Wire Line
	9100 1000 9600 1000
Connection ~ 9100 1500
Wire Wire Line
	9100 1500 8600 1500
Wire Wire Line
	9600 1500 9600 1350
Wire Wire Line
	9600 1150 9600 1000
Connection ~ 9600 1500
Wire Wire Line
	9600 1500 9100 1500
Connection ~ 9600 1000
Wire Wire Line
	9600 1000 10100 1000
Text GLabel 6000 4400 2    50   Input ~ 0
trigger
$Comp
L power:+3.3VA #PWR0101
U 1 1 5EB826F1
P 5600 2450
F 0 "#PWR0101" H 5600 2300 50  0001 C CNN
F 1 "+3.3VA" H 5615 2623 50  0000 C CNN
F 2 "" H 5600 2450 50  0001 C CNN
F 3 "" H 5600 2450 50  0001 C CNN
	1    5600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2450 5600 2700
$Comp
L power:GND #PWR0102
U 1 1 5EB842A5
P 5200 5950
F 0 "#PWR0102" H 5200 5700 50  0001 C CNN
F 1 "GND" H 5205 5777 50  0000 C CNN
F 2 "" H 5200 5950 50  0001 C CNN
F 3 "" H 5200 5950 50  0001 C CNN
	1    5200 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5EB849E2
P 4050 7150
F 0 "H1" H 4150 7196 50  0000 L CNN
F 1 "MountingHole" H 4150 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4050 7150 50  0001 C CNN
F 3 "~" H 4050 7150 50  0001 C CNN
	1    4050 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EB84AA6
P 5050 7150
F 0 "H2" H 5150 7196 50  0000 L CNN
F 1 "MountingHole" H 5150 7105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5050 7150 50  0001 C CNN
F 3 "~" H 5050 7150 50  0001 C CNN
	1    5050 7150
	1    0    0    -1  
$EndComp
$Comp
L flash:W25Q64FWZP U3
U 1 1 5EBAA3E7
P 2000 6950
F 0 "U3" H 2000 7365 50  0000 C CNN
F 1 "W25N01GV" H 2000 7274 50  0000 C CNN
F 2 "Package_SON:WSON-8-1EP_6x5mm_P1.27mm_EP3.4x4mm" H 2000 6950 50  0001 C CNN
F 3 "" H 2000 6950 50  0001 C CNN
	1    2000 6950
	1    0    0    -1  
$EndComp
Text GLabel 4700 5500 0    50   Input ~ 0
MEM_MOSI
Text GLabel 4700 5400 0    50   Input ~ 0
MEM_MISO
Text GLabel 4700 5300 0    50   Input ~ 0
MEM_SCK
Text GLabel 4700 5200 0    50   Input ~ 0
MEM_NSS
Text GLabel 1300 6800 0    50   Input ~ 0
MEM_NSS
$Comp
L power:+3.3V #PWR017
U 1 1 5EBAA71A
P 800 6500
F 0 "#PWR017" H 800 6350 50  0001 C CNN
F 1 "+3.3V" H 815 6673 50  0000 C CNN
F 2 "" H 800 6500 50  0001 C CNN
F 3 "" H 800 6500 50  0001 C CNN
	1    800  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7000 800  7000
Wire Wire Line
	800  7000 800  6550
$Comp
L power:GND #PWR018
U 1 1 5EBABCD9
P 800 7450
F 0 "#PWR018" H 800 7200 50  0001 C CNN
F 1 "GND" H 805 7277 50  0000 C CNN
F 2 "" H 800 7450 50  0001 C CNN
F 3 "" H 800 7450 50  0001 C CNN
	1    800  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7100 800  7100
Wire Wire Line
	800  7100 800  7450
Text GLabel 2700 7000 2    50   Input ~ 0
MEM_SCK
Wire Wire Line
	800  6550 2700 6550
Connection ~ 800  6550
Wire Wire Line
	800  6550 800  6500
Wire Wire Line
	2700 6550 2700 6800
Connection ~ 2700 6800
Wire Wire Line
	2700 6800 2700 6900
Text GLabel 2700 7100 2    50   Input ~ 0
MEM_MOSI
Text GLabel 1300 6900 0    50   Input ~ 0
MEM_MISO
$Comp
L Device:R_Small_US R4
U 1 1 5EF9D132
P 1050 5500
F 0 "R4" H 1118 5546 50  0000 L CNN
F 1 "270" H 1118 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1050 5500 50  0001 C CNN
F 3 "~" H 1050 5500 50  0001 C CNN
	1    1050 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5EF9ED1C
P 1050 5700
F 0 "R5" H 1118 5746 50  0000 L CNN
F 1 "100" H 1118 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1050 5700 50  0001 C CNN
F 3 "~" H 1050 5700 50  0001 C CNN
	1    1050 5700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
