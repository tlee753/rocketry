EESchema Schematic File Version 4
LIBS:core-1-cache
EELAYER 26 0
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
L Connector:Raspberry_Pi_2_3 J1
U 1 1 5BD073EE
P 5100 3850
F 0 "J1" H 4450 5250 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 4450 5150 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 5100 3850 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 5100 3850 50  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
Text Notes 7400 7500 0    50   ~ 0
Raspberry Pi Rocket Cape
Text Notes 8200 7650 0    50   ~ 0
10/23/18
Text Notes 10600 7650 0    50   ~ 0
1.0
NoConn ~ 5000 2550
NoConn ~ 5300 2550
NoConn ~ 5900 3950
NoConn ~ 5900 4050
NoConn ~ 4300 2950
NoConn ~ 4300 3050
NoConn ~ 4300 3250
NoConn ~ 4300 3650
NoConn ~ 4300 3750
NoConn ~ 4300 3850
NoConn ~ 4300 4150
NoConn ~ 4300 4250
NoConn ~ 4300 4350
NoConn ~ 4300 4450
NoConn ~ 5900 4550
NoConn ~ 5900 4650
NoConn ~ 4900 5150
NoConn ~ 5000 5150
NoConn ~ 5200 5150
NoConn ~ 5300 5150
Text Label 5200 2550 1    50   ~ 0
3.3V
NoConn ~ 5900 2950
NoConn ~ 5900 3050
NoConn ~ 5900 3550
Text Notes 10600 7300 0    50   ~ 0
Tyler Lee
Text Notes 10250 7300 0    50   ~ 0
Author:
$Comp
L rocket-motion:LSM9DS1 U3
U 1 1 5BD09B14
P 7900 3700
F 0 "U3" H 8529 3746 50  0000 L CNN
F 1 "LSM9DS1" H 8529 3655 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 9400 4450 50  0001 C CNN
F 3 "" H 7900 3800 50  0001 C CNN
	1    7900 3700
	1    0    0    -1  
$EndComp
$Comp
L rocket-temp:BMP280 U1
U 1 1 5BD0B8B3
P 7600 2700
F 0 "U1" H 7829 3000 50  0000 L CNN
F 1 "BMP280" H 7829 2909 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 7600 2000 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BMP280-DS001-19.pdf" H 7600 2700 50  0001 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
$Comp
L rocket-audio:MP45DT02 MK1
U 1 1 5BD0C65F
P 2750 3850
F 0 "MK1" H 2750 4400 50  0000 C CNN
F 1 "MP45DT02" H 2750 4300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1850 3500 50  0001 L CIN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00025467.pdf" H 2750 3850 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
$Comp
L rocket-radio:RFM69HW U2
U 1 1 5BD0D64D
P 7700 5100
F 0 "U2" H 8130 5200 50  0000 L CNN
F 1 "RFM69HW" H 8130 5109 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 7700 4500 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM69HW-V1.3.pdf" H 7700 4800 50  0001 C CNN
	1    7700 5100
	1    0    0    -1  
$EndComp
Text Label 5100 5150 3    50   ~ 0
GND
NoConn ~ 7200 3800
NoConn ~ 7200 3900
NoConn ~ 7200 4000
NoConn ~ 7200 4100
NoConn ~ 7200 3100
NoConn ~ 7200 4850
NoConn ~ 7200 4950
NoConn ~ 3150 3500
NoConn ~ 7200 2250
NoConn ~ 7200 2550
NoConn ~ 7200 2750
Text Label 3150 3900 0    50   ~ 0
GND
Text Label 7200 2350 2    50   ~ 0
GND
Text Label 7200 3400 2    50   ~ 0
GND
Text Label 7200 4750 2    50   ~ 0
GND
Wire Wire Line
	5900 3250 6550 3250
Wire Wire Line
	6550 3250 6550 2650
Wire Wire Line
	6550 2650 7200 2650
Wire Wire Line
	7200 2450 6450 2450
Wire Wire Line
	6450 2450 6450 3350
Wire Wire Line
	6450 3350 5900 3350
Wire Wire Line
	6450 3350 6450 3500
Wire Wire Line
	6450 3500 7200 3500
Connection ~ 6450 3350
Wire Wire Line
	6550 3250 6550 3600
Wire Wire Line
	6550 3600 7200 3600
Connection ~ 6550 3250
Text Label 7200 2150 2    50   ~ 0
3.3V
Text Label 7200 3300 2    50   ~ 0
3.3V
Text Label 7200 4650 2    50   ~ 0
3.3V
Wire Wire Line
	7200 5050 6700 5050
Wire Wire Line
	6700 5050 6700 4350
Wire Wire Line
	6700 4350 5900 4350
Wire Wire Line
	7200 5150 6550 5150
Wire Wire Line
	6550 5150 6550 4150
Wire Wire Line
	6550 4150 5900 4150
Wire Wire Line
	5900 4250 6400 4250
Wire Wire Line
	6400 4250 6400 5250
Wire Wire Line
	6400 5250 7200 5250
Text Label 3150 4000 0    50   ~ 0
3.3V
Wire Wire Line
	4300 3450 4000 3450
Wire Wire Line
	4000 3450 4000 3800
Wire Wire Line
	4000 3800 3150 3800
Wire Wire Line
	3150 3700 3850 3700
Wire Wire Line
	3850 3700 3850 4550
Wire Wire Line
	3850 4550 4300 4550
Wire Wire Line
	5900 3650 6250 3650
Wire Wire Line
	5900 3750 6100 3750
Wire Wire Line
	6100 3750 6100 5350
Wire Wire Line
	4300 4050 4150 4050
Wire Wire Line
	4150 4050 4150 3600
Wire Wire Line
	4150 3600 3150 3600
NoConn ~ 4300 3350
Wire Wire Line
	6100 5350 6250 5350
Wire Wire Line
	6250 5450 7200 5450
Wire Wire Line
	6250 5350 7200 5350
Wire Wire Line
	6250 3650 6250 5450
Text Label 4700 5150 3    50   ~ 0
GND
NoConn ~ 5400 5150
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5BD2227D
P 4900 1850
F 0 "J5" V 4840 1762 50  0000 R CNN
F 1 "Conn_01x01_Female" V 4749 1762 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 4900 1850 50  0001 C CNN
F 3 "~" H 4900 1850 50  0001 C CNN
	1    4900 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 2550 4900 2050
Text Label 4800 5150 3    50   ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5BD22A82
P 4800 5850
F 0 "J4" V 4647 5898 50  0000 L CNN
F 1 "Conn_01x01_Female" V 4738 5898 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 4800 5850 50  0001 C CNN
F 3 "~" H 4800 5850 50  0001 C CNN
	1    4800 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 5150 4800 5650
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5BD23328
P 3600 5400
F 0 "J2" V 3447 5448 50  0000 L CNN
F 1 "Conn_01x01_Female" V 3538 5448 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 3600 5400 50  0001 C CNN
F 3 "~" H 3600 5400 50  0001 C CNN
	1    3600 5400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5BD2338C
P 3600 5850
F 0 "J3" V 3447 5898 50  0000 L CNN
F 1 "Conn_01x01_Female" V 3538 5898 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 3600 5850 50  0001 C CNN
F 3 "~" H 3600 5850 50  0001 C CNN
	1    3600 5850
	0    1    1    0   
$EndComp
NoConn ~ 3600 5650
NoConn ~ 3600 5200
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5BD25B2F
P 2250 5250
F 0 "J6" H 2277 5226 50  0000 L CNN
F 1 "Conn_01x02_Female" H 2277 5135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 2250 5250 50  0001 C CNN
F 3 "~" H 2250 5250 50  0001 C CNN
	1    2250 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5BD25BA1
P 2250 5700
F 0 "J7" H 2277 5676 50  0000 L CNN
F 1 "Conn_01x02_Female" H 2277 5585 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 2250 5700 50  0001 C CNN
F 3 "~" H 2250 5700 50  0001 C CNN
	1    2250 5700
	1    0    0    -1  
$EndComp
NoConn ~ 2050 5250
NoConn ~ 2050 5350
NoConn ~ 2050 5700
NoConn ~ 2050 5800
$EndSCHEMATC
