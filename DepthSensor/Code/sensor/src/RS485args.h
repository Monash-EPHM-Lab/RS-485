#define HOST 0 //0: sensor 1: host

#define TX 1
#define RX 0
#define WKE 10
#define DE 5
#define RE 4

#if TX == 1 && RX == 0
	#define SERIALOBJ Serial
#else
	#define SERIALOBJ SerialRS
	#define SOFTSERIAL
	
	#include <SoftwareSerial.h>
	//define software serial object
	SoftwareSerial SERIALOBJ(TX,RX);
#endif



#ifndef HOST
	#error please define HOST paramerter for proper functionality 0: sensor 1: host
#endif