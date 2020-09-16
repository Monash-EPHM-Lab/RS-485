#define TX 2
#define RX 3
#define WKE 10
#define DE 6
#define RE 7

#if TX == 1 && RX == 0
	#define SERIALOBJ Serial
#elif
	#define SERIALOBJ SerialRS
	//define software serial object
	SoftwareSerial SERIALOBJ(TX,RX);
#endif