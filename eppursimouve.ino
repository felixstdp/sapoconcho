#include <sapoconcho.h>
sapoconcho beta1;

#define AIA 9 // HIGH >> left backward
#define AIB 10 // HIGH >> left forward
#define BIA 12 // HIGH >> right forward
#define BIB 11 // HIGH >> right backwards

void setup() {

  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  
}

void loop() {

  beta1.forward(128,128,1000);
  beta1.reverse(128,128,1000);
  beta1.rotate(1000);
  beta1.rotate(-1000);
  beta1.brake(1000);

}
