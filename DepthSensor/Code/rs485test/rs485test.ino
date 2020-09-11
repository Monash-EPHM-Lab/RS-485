#include "src/I2C.h"
#include <LowPower.h>
#include "src/RS485.h"


#define DE 5

void setup() {
	
	
	
	RS485.begin(9600);
	RS485.print('R');
	
  // pinMode(5, INPUT);

  // Serial.begin(9600);
  // Serial.print('R');
  // Serial.flush();
  // pinMode(5, OUTPUT);
  // digitalWrite(5, LOW);

}

void loop() {

  uint8_t cmd;
   
  RS485.listen();
  
  delay(10000);
  sleepF();
  
  if (RS485.available() > 0) {
    cmd = RS485.read();

	if (cmd == 'V') {
		getPress();
    }
    if (cmd == 'S') {
      sleepF();
    }
	if (cmd == 'I') {
      getInf();
    }
	
	//debug mode
	if (cmd == 'B') {
      while(1){

	  }
    }

  }


}

void getPress(){
	I2c.write(0x78, 0xAC);
	I2c.read(0x78, 6);
	for (int i=0; i<=5; i++) {
      Serial.print(I2c.receive());
    }
	Serial.println();
}

void sleepF() {
  RS485.sleep();
  LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF);
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

