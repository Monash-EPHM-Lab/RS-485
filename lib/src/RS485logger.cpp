#include <Arduino.h>
#include "RS485args.h"
#include "RS485logger.h"


#include <SoftwareSerial.h>

#define cbi(sfr, bit)   (_SFR_BYTE(sfr) &= ~_BV(bit))
#define sbi(sfr, bit)   (_SFR_BYTE(sfr) |= _BV(bit))

// #define TX 2
// #define RX 3
// #define WKE 10
// #define DE 6
// #define RE 7


SoftwareSerial SerialRS(TX,RX);

RS485L::RS485L(void){
	pinMode(RE,OUTPUT);
	pinMode(DE,OUTPUT);
	pinMode(WKE,OUTPUT);
	digitalWrite(RE,HIGH);
	digitalWrite(DE,LOW);
	digitalWrite(WKE,HIGH);
	
	islistening = false;
	istransmitting = false;
}

void RS485L::write(char value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SerialRS.write(value); 
  istransmitting = true;
  completeTx();
}

template<typename T> void RS485L::print(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  SerialRS.print(value); 
  istransmitting = true;
  completeTx();
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
  istransmitting = true;
  completeTx();
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
	istransmitting = true;
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

bool RS485L::checktransmitt(){
	return istransmitting;
}

void RS485L::wakedevices(){
	digitalWrite(WKE,LOW);
	delayMicroseconds(1);//to generate wake interrupt
	digitalWrite(WKE,HIGH);
	delay(9);//this pulse should be long enough to wake devices from their sleep mode
}

void RS485L::sendcmd (uint8_t addr ,char cmd){
	wakedevices();
	write(addr);
	write(cmd);
	write(0);
	write(0);
}

void RS485L::sendcmd (uint8_t addr ,char cmd, uint8_t par1){
	wakedevices();
	write(addr);
	write(cmd);
	write(par1);
	write(0);
}

void RS485L::sendcmd (uint8_t addr ,char cmd, uint8_t par1, uint8_t par2){
	wakedevices();
	write(addr);
	write(cmd);
	write(par1);
	write(par2);
}

void RS485L::sleep(){
	SerialRS.flush();
	
	endlisten(true);

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

//here we cant use tx interrupts :(
ISR(USART_TX_vect)
{
	
}

