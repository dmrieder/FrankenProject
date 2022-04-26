
#include <Wire.h>
#include "Adafruit_MPR121.h"

Adafruit_MPR121 cap1 = Adafruit_MPR121();
Adafruit_MPR121 cap2 = Adafruit_MPR121();
Adafruit_MPR121 cap3 = Adafruit_MPR121();
Adafruit_MPR121 cap4 = Adafruit_MPR121();

int capData[48];
int counter;

void setup() {
  while (!Serial);        // needed to keep leonardo/micro from starting too fast!

  Serial.begin(9600);
  Serial.println("Adafruit MPR121 Capacitive Touch sensor test"); 


  // Default address is 0x5A, if tied to 3.3V its 0x5B
  // If tied to SDA its 0x5C and if SCL then 0x5D
  
  Serial.println( "looking for 0x5A" );
  if (!cap1.begin(0x5A)) {
      Serial.println("MPR121 0x5A not found, check wiring?");
      while (1);
  }
  Serial.println("MPR121 0x5A found!");

  
  Serial.println( "looking for 0x5B" );
  if (!cap2.begin(0x5B)) {
      Serial.println("MPR121 0x5B not found, check wiring?");
      while (1);
  }
  Serial.println("MPR121 0x5B found!");
  

  Serial.println( "looking for 0x5C" );
  if (!cap3.begin(0x5C)) {
      Serial.println("MPR121 0x5C not found, check wiring?");
      while (1);
  }
  Serial.println("MPR121 0x5C found!");
  

//  Serial.println( "looking for 0x5D" );
//  if (!cap4.begin(0x5D)) {
//      Serial.println("MPR121 0x5D not found, check wiring?");
//      while (1);
//  }
//  Serial.println("MPR121 0x5D found!");
  

}

void loop() {

  counter = 0;

  for (int i=0; i<12; i++) {

    capData[counter] = cap1.filteredData(i);
    counter++;
    
  }
  
  for (int i=0; i<12; i++) {

   capData[counter] = cap2.filteredData(i);
   counter++;
    
  }

 for (int i=0; i<12; i++) {

   capData[counter] = cap3.filteredData(i);
   counter++;
    
  }

// for (int i=0; i<12; i++) {
//
//   capData[counter] = cap4.filteredData(i);
//   counter++;
//    
//  }
  
  Serial.print("*,");
  
  for (int i=0; i<36; i++) {

    Serial.print(capData[i]);
    Serial.print(",");
    
  }
  
  Serial.println("&"); 
  delay(100);







  
}
