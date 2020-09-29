///BoSL RS485 Library///
///rev 1.0.0 ///
//This library defines a standard for interfacing sensors over the BoSL bus//
//For more information see: http://www.bosl.com.au/wiki/RS-485
//please set paramers in RS485args.h 


#include <Arduino.h>

#ifndef RS485_h
#define RS485_h

class RS485L
{
  private:
	uint8_t address;
	
	volatile bool islistening;	
	volatile bool istransmitting;
	
	char cmd;
	uint8_t parA;
	uint8_t parB;
	
	
  public:
	RS485L();
	void begin(long, uint8_t);
	
	void listen();
	void endlisten(bool);

	void sleep();
	void wake();
	
	int available();
	bool checktransmitt();
	uint8_t getaddress();
	
	void wakedevices();
	void completeTx();
	
	void write(char);
    template <typename T> void print(T);
	template <typename T> void println(T);
	void sendcmd (uint8_t,char);
	void sendcmd (uint8_t,char,uint8_t);
	void sendcmd (uint8_t,char,uint8_t,uint8_t);
		
	int read();
	bool parsecmd();
	char getcmd();
	uint8_t getparA();
	uint8_t getparB();
	
};



extern RS485L RS485;



#endif
