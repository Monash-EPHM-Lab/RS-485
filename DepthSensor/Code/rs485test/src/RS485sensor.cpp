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
	istransmitting = false;
}

void RS485S::write(char value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  Serial.write(value); 
  istransmitting = true;
}

template<typename T> void RS485S::print(T value){
  if (islistening){
	  endlisten(true);
  }
  digitalWrite(DE,HIGH);
  Serial.print(value); 
  istransmitting = true;
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
  istransmitting = true;
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
	istransmitting = false;
	
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

bool RS485S::checktransmitt(){
	return istransmitting;
}

void RS485S::sleep(){

	// while ((UCSR0A & _BV (TXC0)) == 0){}
	while(checktransmitt()){}

	endlisten(true);
	
	
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
	//WKE setup interrupt //low level generates interupt
	cbi(EICRA,ISC01);
	cbi(EICRA,ISC00);
	//set device address
	address = addr;
	

}

void RS485S::wake(){
	//clear interrupts on WKE
	cbi(EIMSK,INT0);
	
	if (islistening){
		listen();
	}

}

RS485S RS485 = RS485S();


ISR(USART_TX_vect)
{
	RS485.completeTx();
}

ISR(INT0_vect)
{
	cbi(EIMSK,INT0);
}