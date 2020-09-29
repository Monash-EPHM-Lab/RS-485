#include <Arduino.h>
#include "RS485args.h"
#include "RS485.h"


//here we do some logic to see which compliler options we need for the sensor vs host 
#if TX == 1 && RX == 0
	//create macro for using hardware serial
	#define SERIALOBJ Serial
#else
	//create macro for using software serial
	#define SERIALOBJ SerialRS
	
	//keyword for later precomplier changes
	#define SOFTSERIAL
	
	//define software serial object
	#include <SoftwareSerial.h>
	SoftwareSerial SERIALOBJ(TX,RX);
#endif



#ifndef HOST
	#error please define HOST paramerter for proper functionality 0: sensor 1: host
#endif


#define cbi(sfr, bit)   (_SFR_BYTE(sfr) &= ~_BV(bit))
#define sbi(sfr, bit)   (_SFR_BYTE(sfr) |= _BV(bit))



RS485L::RS485L(void){
	//initial read pin to sleep state
	pinMode(RE,OUTPUT);
	digitalWrite(RE,HIGH);
	
	//initial write pin to sleep state
	pinMode(DE,OUTPUT);
	digitalWrite(DE,LOW);
	
	//initialise wake pin to high
	#if HOST == 1
	pinMode(WKE,OUTPUT);
	digitalWrite(WKE,HIGH);
	#endif
	
	//set state
	address = 0x00;
	
	islistening = false;
	istransmitting = false;
	
	cmd = '\0';
	parA = 0;
	parB = 0;
}

//this function beings opens the RS485 channel and set BAUD and address, also sets registers for intrrupts
void RS485L::begin(long baud, uint8_t addr = 0x00){
	//set baud rate of either software of hardware serial
	SERIALOBJ.begin(baud);
	
	//TX complete interrupt
	#ifndef SOFTSERIAL
	sbi(UCSR0B, TXCIE0);
	#endif
	
	#if HOST == 0
	//WKE setup interrupt //low level generates interupt
	cbi(EICRA,ISC01);
	cbi(EICRA,ISC00);
	#endif
	
	//set device address (0xFF) is reserved for errors)
	if (addr != 0xFF){
	address = addr;
	}

}

//listen to RS485 bus
void RS485L::listen(){
	digitalWrite(RE,LOW);
	//if we are software serial we need to also listen
	#ifdef SOFTSERIAL
	SERIALOBJ.listen();
	#endif
	
	islistening = true;
}

//stop listing to RS485 bus, if pause then does not update the internal listing state, useful for resuming later
void RS485L::endlisten(bool pause = 0){
	digitalWrite(RE,HIGH);
	//sometimes we want to non-intrusively stop listing, say when when quickly transmitting something and then go back to listning
	if (not pause){
	islistening = false;
	}
}

//prepair bus for sleep by flushing registers seting wake up triggers etc
void RS485L::sleep(){
	
	//if we are hardware serial then we may be still trasmiting data when we go to sleep
	//we need to wait until this buffer empties
	#ifndef SOFTSERIAL
	while(checktransmitt()){}
	#endif
	
	//pause listing state to resume on wake
	endlisten(true);

	digitalWrite(DE,LOW);
	
	//enable interrupts on WKE
	#if HOST == 0
	sbi(EIMSK,INT0);
	#endif
}

//resume bus state from before sleep
void RS485L::wake(){
	
	//clear interrupts on WKE
	#if HOST == 0
	cbi(EIMSK,INT0);
	#endif
	
	//resume listing state
	if (islistening){
		listen();
	}
}

//function to get number of characters in recieve buffer.
int RS485L::available(){
	return SERIALOBJ.available();
}

//function to querey state of tranmission
bool RS485L::checktransmitt(){
	return istransmitting;
}

//return device address
uint8_t RS485L::getaddress(){
	return address;
}

//function to wake sensors only makes sense to define on host
#if HOST == 1
void RS485L::wakedevices(){
	digitalWrite(WKE,LOW);
	delayMicroseconds(1);//to generate wake interrupt//ATmega328p wakes on LOW but will not execute interrupt
	digitalWrite(WKE,HIGH);
	delay(9);//this pulse should be long enough to wake devices from their sleep mode
}
#endif

//function which is called when tranmission stops
//on hardware serial mode this is called via interrrupt
//on oftware serial this is called on a write function exit
void RS485L::completeTx(){
	istransmitting = false;
	
	digitalWrite(DE,LOW);
	
	//resume listen state
	if (islistening){
		listen();
	}
}

//write char to serial
void RS485L::write(char value){
  //pause listing state
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SERIALOBJ.write(value); 
  istransmitting = true;
  //on soft serial we need wait untill trasmitt is over
  #ifdef SOFTSERIAL
  completeTx();
  #endif
}

//print value to serial
template<typename T> void RS485L::print(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SERIALOBJ.print(value); 
  istransmitting = true;
  #ifdef SOFTSERIAL
  completeTx();
  #endif
}
//instantiate template functions
template void RS485L::print<__FlashStringHelper const*>(__FlashStringHelper const*);
template void RS485L::print<char const*>(char const*);
template void RS485L::print<char>(char);
template void RS485L::print<int>(int);
template void RS485L::print<double>(double);

//println value to serial
template<typename T> void RS485L::println(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SERIALOBJ.println(value); 
  istransmitting = true;
  #ifdef SOFTSERIAL
  completeTx();
  #endif
}
//instantiate template functions
template void RS485L::println<__FlashStringHelper const*>(__FlashStringHelper const*);
template void RS485L::println<char const*>(char const*);
template void RS485L::println<char>(char);
template void RS485L::println<int>(int);
template void RS485L::println<double>(double);

//function to wake sensors and send a command over the RS-485 bus
//commands are 4 bytes long, this fill in the final bytes with zeros
void RS485L::sendcmd (uint8_t addr ,char cmd){
	wakedevices();
	write(addr);
	write(cmd);
	write(0);
	write(0);
}

//function to wake sensors and send a command over the RS-485 bus
//commands are 4 bytes long, this fill in the final bytes with zeros
void RS485L::sendcmd (uint8_t addr ,char cmd, uint8_t parA){
	wakedevices();
	write(addr);
	write(cmd);
	write(parA);
	write(0);
}

//function to wake sensors and send a command over the RS-485 bus
void RS485L::sendcmd (uint8_t addr ,char cmd, uint8_t parA, uint8_t parB){
	wakedevices();
	write(addr);
	write(cmd);
	write(parA);
	write(parB);
}

//read byte from serial
int RS485L::read(){
	return SERIALOBJ.read();
}


//function to pass a 4-byte command over the RS-485 bus
//returns 1 if parse was successful; 0 if unsuccessful
//command is stored in cmd parA parB variables
bool RS485L::parsecmd(){
	
	//no device should have the 0xFF address
	uint8_t bytein = 0xFF;
	//remember old listen state
	bool hold_listen = islistening;
	//beign listen
	listen();
	//wait for commands
	for(int i = 0; i<250; i++){
	  delayMicroseconds(10);
	  //if there is a byte available then we should read it
	  if (available()){
		  bytein = read();
		  break;
	  }
	}
	
	//first byte is always the address of the sensor spoken to
	if (bytein != address){
		//if adress does not match then resume listen state 
		if (not hold_listen){
		endlisten();
		}
		return 0;
	}else{
		//we got the right adress so we should probably wait for the other commands to come in
		delayMicroseconds(400*3);//this is to buffer 3 characters //this may need to change dep on baud rate
		if (available() >= 3){//make sure that there ARE three bytes to read otherwise read() returns -1 or 0xFF.
			cmd = read();
			parA = read();
			parB = read();
		}else{
			//if we didn't get three character in time something probably went wrong
			if (not hold_listen){
			endlisten();
			}
			return 0;
		}
		
		
	}
	//everything went well we should restore the listing state and exit with a success
	if (not hold_listen){
		endlisten();
	}
	return 1;
}

//returns last command recieved
char RS485L::getcmd(){
	return cmd;
}
//returns last parA recieved
uint8_t RS485L::getparA(){
	return parA;
}
//returns last parB recieved
uint8_t RS485L::getparB(){
	return parB;
}

//create instance of object
RS485L RS485 = RS485L();

//if have hard serial then we want to generate an interrupt when the tx transfer is complete
#ifndef SOFTSERIAL
ISR(USART_TX_vect)
{
	RS485.completeTx();
}
#endif

//if we are a device then we want to wake up when INT0 is held low
#if HOST == 0
ISR(INT0_vect)
{
	//disable interrupts on INT0 so we don't keep getting intrrupted
	cbi(EIMSK,INT0);
}
#endif