#include <Arduino.h>
#include "RS485args.h"
#include "RS485.h"


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

#define cbi(sfr, bit)   (_SFR_BYTE(sfr) &= ~_BV(bit))
#define sbi(sfr, bit)   (_SFR_BYTE(sfr) |= _BV(bit))



RS485L::RS485L(void){
	pinMode(RE,OUTPUT);
	digitalWrite(RE,HIGH);
	
	pinMode(DE,OUTPUT);
	digitalWrite(DE,LOW);
	
	#if HOST == 1
	pinMode(WKE,OUTPUT);
	digitalWrite(WKE,HIGH);
	#endif
	
	islistening = false;
	istransmitting = false;
	
	cmd = '\0';
	parA = 0;
	parB = 0;
}

void RS485L::write(char value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SERIALOBJ.write(value); 
  istransmitting = true;
  
  #ifdef SOFTSERIAL
  completeTx();
  #endif
}

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



void RS485L::listen(){
	digitalWrite(RE,LOW);
	#ifdef SOFTSERIAL
	SERIALOBJ.listen();
	#endif
	
	islistening = true;
}

void RS485L::completeTx(){
	istransmitting = false;
	
	digitalWrite(DE,LOW);
	if (islistening){
		listen();
	}
}

int RS485L::available(){
	return SERIALOBJ.available();
}

void RS485L::endlisten(bool pause = 0){
	digitalWrite(RE,HIGH);
	if (not pause){
	islistening = false;
	}
}

bool RS485L::checktransmitt(){
	return istransmitting;
}

uint8_t RS485L::getaddress(){
	return address;
}

#if HOST == 1
void RS485L::wakedevices(){
	digitalWrite(WKE,LOW);
	delayMicroseconds(1);//to generate wake interrupt
	digitalWrite(WKE,HIGH);
	delay(9);//this pulse should be long enough to wake devices from their sleep mode
}
#endif

void RS485L::sendcmd (uint8_t addr ,char cmd){
	wakedevices();
	write(addr);
	write(cmd);
	write(0);
	write(0);
}

void RS485L::sendcmd (uint8_t addr ,char cmd, uint8_t parA){
	wakedevices();
	write(addr);
	write(cmd);
	write(parA);
	write(0);
}

void RS485L::sendcmd (uint8_t addr ,char cmd, uint8_t parA, uint8_t parB){
	wakedevices();
	write(addr);
	write(cmd);
	write(parA);
	write(parB);
}

void RS485L::sleep(){
	#ifndef SOFTSERIAL
	while(checktransmitt()){}
	#endif
	
	endlisten(true);

	digitalWrite(DE,LOW);
	
	//enable interrupts on WKE
	#if HOST == 0
	sbi(EIMSK,INT0);
	#endif
}


int RS485L::read(){
	return SERIALOBJ.read();
}

void RS485L::begin(long baud, uint8_t addr = 0x00){
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
	
	address = addr;
	

}

char RS485L::getcmd(){
	return cmd;
}
uint8_t RS485L::getparA(){
	return parA;
}
uint8_t RS485L::getparB(){
	return parB;
}

bool RS485L::parsecmd(){
	
	//no device should have the 0 address
	uint8_t bytein = 0x00;
	//remember old listen state
	bool hold_listen = islistening;
	//beign listen
	listen();
	//wait for commands
	for(int i = 0; i<250; i++){
	  delayMicroseconds(10);
	  
	  if (available()){
		  bytein = read();
		  break;
	  }
	}
	
	if (bytein != address){
		if (not hold_listen){
		endlisten();
		}
		return 0;
	}else{
		delayMicroseconds(400*3);//this is to buffer 3 characters //this may need to change dep on baud rate
		if (available() >= 3){//make sure that there ARE three bytes to read else say its an error
			cmd = read();
			parA = read();
			parB = read();
		}else{
			if (not hold_listen){
			endlisten();
			}
			return 0;
		}
		
		
	}
	
	if (not hold_listen){
		endlisten();
	}
	return 1;
}

void RS485L::wake(){
	
	//clear interrupts on WKE
	#if HOST == 0
	cbi(EIMSK,INT0);
	#endif
	
	if (islistening){
		listen();
	}
}

RS485L RS485 = RS485L();


#ifndef SOFTSERIAL
ISR(USART_TX_vect)
{
	RS485.completeTx();
}
#endif

#if HOST == 0
ISR(INT0_vect)
{
	cbi(EIMSK,INT0);
}
#endif