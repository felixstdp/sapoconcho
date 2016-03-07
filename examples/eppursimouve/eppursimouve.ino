#include <L9110.h>
L9110 sapoconcho;

void setup() {}

void loop() {

  sapoconcho.forward(128,128,1000);
  sapoconcho.reverse(128,128,1000);
  sapoconcho.rotate(128,128,1000);
  sapoconcho.rotate(128,128,-1000);
  sapoconcho.brake(1000);

}
