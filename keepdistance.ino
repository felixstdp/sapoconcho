#include <NewPing.h>

#define TRIGGER_PIN  7  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define ECHO_PIN     7  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define MAX_DISTANCE 50 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.

NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

// programa básico para Sapoconcho con los movimientos como subrutinas y no como librerías

#define AIA 11 // HIGH >> left backward
#define AIB 6 // HIGH >> left forward
#define BIA 9 // HIGH >> right forward
#define BIB 10 // HIGH >> right backwards

void setup() {

  pinMode(AIA,OUTPUT);
  pinMode(AIB,OUTPUT);
  pinMode(BIA,OUTPUT);
  pinMode(BIB,OUTPUT);
  
}

void loop() {

  
  delay(50);
  float d=sonar.ping_cm();
  if (d==0) d=50;
 
  if (d<20) {
    forward(120,120,50);
  } else {
    reverse(120,120,50);
  }
    
}

void forward(int l, int r, int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,l);
  analogWrite(BIA,0);
  analogWrite(BIB,r);
  delay(t);
}

void reverse(int l, int r, int t)
{
  analogWrite(AIA,l);
  analogWrite(AIB,0);
  analogWrite(BIA,r);
  analogWrite(BIB,0);
  delay(t);
}

