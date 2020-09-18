//please set the arugments for the RS485 sensor before compliation.
//this file goes in the folder containing RS485.cpp

#define HOST 0 //0: sensor 1: host


//PIN DEFINITIONS
#define TX 2	//RS485 TX pin
#define RX 3	//RS485 RX pin
#define WKE 10  //RS485 sensor wake pin (ignored if host = 0 (ie: device is a sensor))
#define DE 6	//RS485 line drive write enable pin
#define RE 7	//RS485 line drive read enable pin


//Note:
/* The current setup of the library check to see if you have defined
TX = 1 and RX = 0 if so then the library will use hardware serial
this has benifits of supporting higher baud rates and hardware interrupts
if not software serial will be used. The maxium baud rate for software serial is 
about 38400 baud.
*/

/*
Default for depth probe and hopefull all ATmega382p based sensors
#define TX 1
#define RX 0
#define WKE NULL
#define DE 5
#define RE 4
*/
