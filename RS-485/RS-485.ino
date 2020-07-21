
void setup(){
	pinMode(7, OUTPUT);
	pinMode(6, OUTPUT);
	pinMode(A0, INPUT);
	digitalWrite(7, HIGH);
	digitalWrite(6, HIGH);
	
	
	Serial.begin(9600);
}

void loop(){
	Serial.println(analogRead(A0));
	
}