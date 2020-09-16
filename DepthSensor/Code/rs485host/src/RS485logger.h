///BoSL RS485 Logger Library///
//This library defines a standard for interfacing sensors over the BoSL bus//

//I think the way we want to do this is to wake up all devices on a WKE pulse
//the next byte sent is going to be a device address.
//this will indicate to keep this sensor awake and tell all others to go back to sleep.
//from here we will issue a command to the sensor for it to do something. It will then give a response.
//these commands will likely be defined on a sensor to sensor basis however we should have some standards.
//i'm not sure at the moment if we will introduce support for a delayed responce. I'll have to think about the best way to do this.
//it shouldn't be too hard, i imagine something like all other devices being disabled and the master listning should be able to accomplish this.


/////Common Commands/////
//S -- Sleep
//I -- Info
//P -- Poll Sensor Measurement
//change address
//configuration
//reset
//ready
//termination (end)
//


/////Address Table////
//0x00 -- Host
//0x01 -- BoSL Depth Probe



#include <Arduino.h>

#ifndef RS485_h
#define RS485_h



class RS485L
{
  private:
	bool islistening;

	
  public:
	int address;
	void listen();
	volatile bool istransmitting;
	bool checktransmitt();
  
    template <typename T> void print(T);
	template <typename T> void println(T);
	void write(char);
	
	void sendcmd (int,int);
	void sleep();
	void wakedevices();
	void wake();
	int read();
	void begin(long, int);
	void endlisten(bool);
	//void RS485();
	void completeTx();
	int available();

	RS485L();
  
    
};



extern RS485L RS485;



#endif
