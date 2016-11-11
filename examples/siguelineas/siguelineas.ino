#include <L9110.h>
L9110 sapoconcho(3,5,6,9);

void setup() {}

void loop()
{
  if (analogRead(A0)<500) sapoconcho.rotate(150,150,100);
  if (analogRead(A1)<500) sapoconcho.rotate(150,150,-100);
  sapoconcho.forward(150,150,100);
}
