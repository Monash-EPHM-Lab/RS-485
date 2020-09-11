#include <Arduino.h>
#include "RS485.h"

#define cbi(sfr, bit)   (_SFR_BYTE(sfr) &= ~_BV(bit))
#define sbi(sfr, bit)   (_SFR_BYTE(sfr) |= _BV(bit))

#define DE 5
#define RE 4


RS485Bus::RS485Bus(void){
	pinMode(RE,OUTPUT);
	pinMode(DE,OUTPUT);
	digitalWrite(RE,HIGH);
	digitalWrite(DE,LOW);
	
	islistening = false;
}

template<typename T> void RS485Bus::print(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  Serial.print(value); 
  
}
//instantiate template functions
template void RS485Bus::print<__FlashStringHelper const*>(__FlashStringHelper const*);
template void RS485Bus::print<char const*>(char const*);
template void RS485Bus::print<char>(char);
template void RS485Bus::print<int>(int);
template void RS485Bus::print<double>(double);

template<typename T> void RS485Bus::println(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  Serial.println(value); 
  
}
//instantiate template functions
template void RS485Bus::println<__FlashStringHelper const*>(__FlashStringHelper const*);
template void RS485Bus::println<char const*>(char const*);
template void RS485Bus::println<char>(char);
template void RS485Bus::println<int>(int);
template void RS485Bus::println<double>(double);



void RS485Bus::listen(){
	digitalWrite(RE,LOW);
	islistening = true;
}

void RS485Bus::completeTx(){
	digitalWrite(DE,LOW);
	if (islistening){
		listen();
	}
}

int RS485Bus::available(){
	return Serial.available();
}

void RS485Bus::endlisten(bool pause = 0){
	digitalWrite(RE,HIGH);
	if (not pause){
	islistening = false;
	}
}

void RS485Bus::sleep(){
	digitalWrite(RE,HIGH);
	digitalWrite(DE,LOW);
}


int RS485Bus::read(){
	return Serial.read();
}

void RS485Bus::begin(long baud){
	Serial.begin(baud);
	//TX complete interrupt
	sbi(UCSR0B, TXCIE0);
	//WKE generate interrupt
	cbi(EICRA,ISC01);
	sbi(EICRA,ISC00);
	sbi(EIMSK,INT0);

}

RS485Bus RS485 = RS485Bus();


ISR(USART_TX_vect)
{
	RS485.completeTx();
}

ISR(INT0_vect)
{

}
