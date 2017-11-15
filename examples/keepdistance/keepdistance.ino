#include <L9110.h>
L9110 sapoconcho(3,5,6,9);

#include <NewPing.h>

NewPing sonar(7,7,50); // NewPing setup of pins and maximum distance.

void setup() {}

void loop() {

  
  delay(50);
  float d=sonar.ping_cm();
  if (d==0) d=50;
 
  if (d<20) {
    sapoconcho.forward(120,120,50);
  } else {
    sapoconcho.reverse(120,120,50);
  }
    
}
