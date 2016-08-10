/*
  Bargraph sketch

 Turns on a series of LEDs proportional to a value of an analog sensor.
 Six LEDs are controlled but you can change the number of LEDs by changing
 the value of NbrLEDs and adding the pins to the ledPins array
 */

const int NbrLEDs = 8;
const int ledPins[] = { 5, 6, 7, 8, 9, 10, 11, 12};
const int photocellPin = A0; 
                             
const int wait = 30;

// Swap values of the following two constants if cathodes are connected to Gnd
const boolean LED_ON = HIGH;
const boolean LED_OFF = LOW;

int sensorValue = 0;        // value read from the sensor
int ledLevel = 0;           // sensor value converted into LED 'bars'

void setup() {
  for (int led = 0; led < NbrLEDs; led++)
  {
    pinMode(ledPins[led], OUTPUT);  // make all the LED pins outputs
  }
}

void loop() {
  //sensorValue = analogRead(analogInPin);             // read the analog in value
  sensorValue = analogRead(photocellPin);
  ledLevel = map(sensorValue, 300, 1023, 0, NbrLEDs);  // map to the number of LEDs
  for (int led = 0; led < NbrLEDs; led++)
  {
    if (led < ledLevel ) {
      digitalWrite(ledPins[led], LED_ON);     // turn on pins less than the level
    }
    else {
      digitalWrite(ledPins[led], LED_OFF);      // turn off pins higher than 
                                                // the level
    }
  }
}
      
    
