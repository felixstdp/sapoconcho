#include <L9110.h>
L9110 sapoconcho;

void setup() {}

void loop()
{
  if (analogRead(A2)<500) sapoconcho.rotate(150,150,100);
  if (analogRead(A3)<500) sapoconcho.rotate(150,150,-100);
  sapoconcho.forward(150,150,100);
}
