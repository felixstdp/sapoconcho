
#include <L9110.h>
L9110 beta1;

void setup() {

}

void loop() {

  beta1.forward(128,128,1000);
  beta1.reverse(128,128,1000);
  beta1.rotate(1000);
  beta1.rotate(-1000);
  beta1.brake(1000);

}
