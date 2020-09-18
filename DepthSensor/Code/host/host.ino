//example sketch to set up most basic host of bosl bus
#include "src/RS485.h"
//be sure to configuer RS485args.h !!


void setup() {
	//begin serial to view output
	Serial.begin(9600);
	//open RS485 bus at baud rate 38400 and address 0x00 (0x00 prefered for master)
	RS485.begin(38400, 0x00);
	//start listing to the RS485 bus
	RS485.listen();
}

void loop() {
	//print T once per loop to show that serial port is working
	Serial.println('T');
	//send command 'P' to deivce at address 0x01
	RS485.sendcmd(0x01, 'P');
	//delay for a bit to wait for responce
	delay(1000);
	//send command 'I' to deivce at address 0x01
	RS485.sendcmd(0x01, 'I');
	//delay for a bit to wait for responce
	delay(1000);
	
	//print recieved charaters on the RS-485 bus out to serial
	while(RS485.available() > 0){
		char cmd = RS485.read();
		Serial.write(cmd);
	}
}

