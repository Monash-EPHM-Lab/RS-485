#include <Arduino.h>
#include "RS485sensor.h"

#define cbi(sfr, bit)   (_SFR_BYTE(sfr) &= ~_BV(bit))
#define sbi(sfr, bit)   (_SFR_BYTE(sfr) |= _BV(bit))

#define DE 5
#define RE 4


RS485S::RS485S(void){
	pinMode(RE,OUTPUT);
	pinMode(DE,OUTPUT);
	digitalWrite(RE,HIGH);
	digitalWrite(DE,LOW);
	
	islistening = false;
}

void RS485S::write(char value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  Serial.write(value); 
  
}

template<typename T> void RS485S::print(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  Serial.print(value); 
  
}
//instantiate template functions
template void RS485S::print<__FlashStringHelper const*>(__FlashStringHelper const*);
template void RS485S::print<char const*>(char const*);
template void RS485S::print<char>(char);
template void RS485S::print<int>(int);
template void RS485S::print<double>(double);

template<typename T> void RS485S::println(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  Serial.println(value); 
  
}
//instantiate template functions
template void RS485S::println<__FlashStringHelper const*>(__FlashStringHelper const*);
template void RS485S::println<char const*>(char const*);
template void RS485S::println<char>(char);
template void RS485S::println<int>(int);
template void RS485S::println<double>(double);



void RS485S::listen(){
	digitalWrite(RE,LOW);
	islistening = true;
}

void RS485S::completeTx(){
	digitalWrite(DE,LOW);
	if (islistening){
		listen();
	}
}

int RS485S::available(){
	return Serial.available();
}

void RS485S::endlisten(bool pause = 0){
	digitalWrite(RE,HIGH);
	if (not pause){
	islistening = false;
	}
}

void RS485S::sleep(){
	endlisten(true)

	digitalWrite(DE,LOW);
	//enable interrupts on WKE
	sbi(EIMSK,INT0);
}


int RS485S::read(){
	return Serial.read();
}

void RS485S::begin(long baud, int addr){
	Serial.begin(baud);
	//TX complete interrupt
	sbi(UCSR0B, TXCIE0);
	//WKE setup interrupt
	sbi(EICRA,ISC01);
	sbi(EICRA,ISC00);
	//set device address
	address = addr;
	

}

void RS485S::wake(){
	if (islistening){
		listen();
	}
	//enable interrupts on WKE
	sbi(EIMSK,INT0);
}

RS485S RS485 = RS485S();


ISR(USART_TX_vect)
{
	RS485.completeTx();
}

ISR(INT0_vect)
{
	RS485.wake();
}
