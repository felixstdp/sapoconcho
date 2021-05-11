#include <mclon.h>
sapoconcho mclon();

void setup() {}

void loop()
{
  int aleatorio = random(4);
  switch(aleatorio) {
    
    case 0:
      sapoconcho.forward(100,100,1000);
      break;
    case 1:
      sapoconcho.reverse(100,100,1000);
      break;
    case 2:
      sapoconcho.rotate(100,100,1000);
      break;
    case 3:
      sapoconcho.rotate(100,100,-1000);
      break;
  }
}
