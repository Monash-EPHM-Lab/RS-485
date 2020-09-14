#include <Arduino.h>
#include <SoftwareSerial.h>
#include "RS485logger.h"

#define cbi(sfr, bit)   (_SFR_BYTE(sfr) &= ~_BV(bit))
#define sbi(sfr, bit)   (_SFR_BYTE(sfr) |= _BV(bit))

#define TX 8
#define RX 9
#define DE 5
#define RE 4
#define WKE 7

SoftwareSerial SerialRS(2,3);

RS485L::RS485L(void){
	pinMode(RE,OUTPUT);
	pinMode(DE,OUTPUT);
	pinMode(WKE,OUTPUT);
	digitalWrite(RE,HIGH);
	digitalWrite(DE,LOW);
	digitalWrite(WKE,LOW);
	
	islistening = false;
}

void RS485L::write(char value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SerialRS.write(value); 
  
}

template<typename T> void RS485L::print(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SerialRS.print(value); 
  
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
  SerialRS.println(value); 
  
}
//instantiate template functions
template void RS485L::println<__FlashStringHelper const*>(__FlashStringHelper const*);
template void RS485L::println<char const*>(char const*);
template void RS485L::println<char>(char);
template void RS485L::println<int>(int);
template void RS485L::println<double>(double);



void RS485L::listen(){
	digitalWrite(RE,LOW);
	SerialRS.listen();
	
	islistening = true;
}

void RS485L::completeTx(){
	digitalWrite(DE,LOW);
	if (islistening){
		listen();
	}
}

int RS485L::available(){
	return SerialRS.available();
}

void RS485L::endlisten(bool pause = 0){
	digitalWrite(RE,HIGH);
	if (not pause){
	islistening = false;
	}
}

void RS485L::wake_devices(){
	digitalWrite(WKE,HIGH);
	delay(1);
	digitalWrite(WKE,LOW);
	
}

void sendcmd (int addr ,int cmd){
	wakedevices();
	write(addr);
	write(cmd);	
}

void RS485L::sleep(){
	endlisten(true)

	digitalWrite(DE,LOW);

}


int RS485L::read(){
	return SerialRS.read();
}

void RS485L::begin(long baud, int addr = 0x00){
	SerialRS.begin(baud);
	//TX complete interrupt
	sbi(UCSR0B, TXCIE0);
	//
	address = addr;
	

}

void RS485L::wake(){
	if (islistening){
		listen();
	}
}

RS485L RS485 = RS485L();


ISR(USART_TX_vect)
{
	RS485.completeTx();
}

