#include <L9110.h>
L9110 sapoconcho(3,5,6,9);

// siguelíneas con algoritmo PID
// utiliza seis sensores analógicos en la parte frontal
// tres a la izquierda y tres a la derecha

int forward=120;
float kp=.08;
float ki=0.03;
float kd=0.0;
float p,d;
float i=0;
float p_old=0;
int u;


void setup() {}

void loop()
{
  p=3*analogRead(A1)+2*analogRead(A2)+analogRead(A3)-analogRead(A4)-2*analogRead(A5)-3*analogRead(A6);
  i=i+p;
  d=p-p_old;
  p_old=p;
  
  if ((p*i)<0) i=0;  // corrige el overshooting - integral windup

  u=kp*p+ki*i+kd*d;
  sapoconcho.drive(forward-u,forward+u,0);
}
