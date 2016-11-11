#include <L9110.h>
L9110 sapoconcho(3,5,6,9);

#include <NewPing.h>

#define TRIGGER_PIN  7  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define ECHO_PIN     7  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define MAX_DISTANCE 50 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.

NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

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
