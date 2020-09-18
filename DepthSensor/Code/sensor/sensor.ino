//example sketch to set up most basic sensor of bosl bus
#include <LowPower.h>
#include "src/RS485.h"
//be sure to configuer RS485args.h !!

void setup() {
	
	//open RS485 bus at baud rate 38400 and address 0x01
	RS485.begin(38400, 0x01);
	//start listing to the RS485 bus
	RS485.listen();
}

void loop() {
	char com;
	uint8_t parA;
	uint8_t parB;
	//sleep untill command is issued
	sleepF();
	
	//we have woken up so a command must have been sent
	
	//check to see if command has parsed correctly (eg: correct device address, valid length)
	if(RS485.parsecmd()){
		//get the command just recieved
		com = RS485.getcmd();
		//each command package is also sent with two parameters, we are using them here and so they will read zero.
		parA = RS485.getparA();
		parB = RS485.getparB();
		
		//match commands to functions to run
		if (com == 'I') {getInf();}
		if (com == 'P') {getPress();}
	}

	
}


void sleepF() {
  //prepare RS-485 for sleep
  RS485.sleep();
  //sleep sensor (it says forever but when a command is issued on the RS-485 bus it will trigger a wake up)
  LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF);
  //resume bus state after sleep
  RS485.wake();
}

//example function which prints the pressure to RS485
void getPress(){
	RS485.print(1001.10);
}

//example function which prints device info to RS485
void getInf(){
	RS485.println(F("ID: 00x"));
	RS485.println(F("Firmware rev: 0.1.2"));
	RS485.println(F("Hardware rev: 0.1.3"));
}