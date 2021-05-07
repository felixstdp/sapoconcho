#include <sapoconchoL.h>
sapoconchoL sapoconchoL(7,4,6,5);

void setup() {}

void loop() {

  sapoconcho.forward(128,128,1000);
  sapoconcho.reverse(128,128,1000);
  sapoconcho.rotate(128,128,1000);
  sapoconcho.rotate(128,128,-1000);
  sapoconcho.brake(1000);

}
