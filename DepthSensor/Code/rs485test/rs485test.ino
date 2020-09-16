  
#include "src/I2C.h"
#include <LowPower.h>
#include "src/RS485sensor.h"


#define DE 5


void setup() {
	
	
	RS485.begin(38400, 0x01);
	RS485.print("R");
	RS485.listen();
}

void loop() {
	uint8_t cmd;
	bool addr_match = false;
	
	RS485.write('V');

	sleepF();
	
	//wait for commands
  for(int i = 0; i<500; i++){
	  if (RS485.available()){
		  break;
	  }
	  delayMicroseconds(10);
  }
	//hmm we need to think about this a bit more carefully we need to make sure it knows when to start transmitting maybe we have commands of a fixed length or have a stop bit
  while(RS485.available() > 0) {
	delayMicroseconds(400);//this time is long enough so that the next character can be transmitted
    cmd = RS485.read();

	if (cmd == RS485.address){
		addr_match = true;
		continue;
	}
	if(addr_match){
		if (cmd == 'P') {getPress();}
		if (cmd == 'S') {sleepF();}
		if (cmd == 'I') {getInf();}
    }
	
	
  }
}

void getPress(){
	RS485.write('Q');
	// I2c.begin();
	// I2c.write(0x78, 0xAC);
	// I2c.read(0x78, 6);
	// for (int i=0; i<=5; i++) {
      // Serial.print(I2c.receive());
    // }
	// Serial.println();
}

void sleepF() {
  RS485.sleep();

  LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF);
	RS485.wake();
}



// void sampleFast() {
  // uint8_t adcData[SAMPLES * 2];

  // I2c.write(ADCADR, 0b10101100);
  // I2c.write(ADCADR, 0b00000010);

  // I2c.readex(ADCADR, SAMPLES * 2, adcData);

  // for (int i = 0; i < SAMPLES * 2; i += 2) {
    // int rsult = (adcData[i] - 240) * 256 + adcData[i + 1];
    // if (rsult > 2048) {
      // rsult = rsult - 4096;
    // }
    // read[i / 2] = rsult;
  // }

// }

// void sampleSlow(int delay) {
  // I2c.write(ADCADR, 0b10100100);
  // I2c.write(ADCADR, 0b00000010);

  // uint8_t MSB;
  // uint8_t LSB;


  // for (int i = 0; i < SAMPLES * 2; i += 2) {
    // I2c.read(ADCADR, 2);

    // MSB = I2c.receive();
    // LSB = I2c.receive();

    // int16_t rsult = (MSB - 240) * 256 + LSB;
    // if (rsult > 2048) {
      // rsult = rsult - 4096;
    // }
    // read[i / 2] = rsult;
    // delayMicroseconds(delay);
  // }


// }



void getInf(){
	RS485.println(F("ID: 00x"));
	RS485.println(F("Firmware rev: 0.1.2"));
	RS485.println(F("Hardware rev: 0.1.3"));
}