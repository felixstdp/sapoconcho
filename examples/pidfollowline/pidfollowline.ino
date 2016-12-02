#include <L9110.h>
L9110 sapoconcho(9,6,5,3);

#include <QTRSensors.h>
QTRSensorsAnalog qtra((unsigned char[]) {0, 1, 2, 3, 8, 6}, 6);
unsigned int IR[6];

// siguelíneas con algoritmo PID
// utiliza seis sensores analógicos en la parte frontal (Pololu QTR8 analog)
// tres a la izquierda y tres a la derecha

int forward=120;
float kp=.08;
float ki=0.03;
float kd=0.0;
int p,d;
float i=0;
float p_old=0;
int u;

void setup() {}

void loop()
{
  qtra.read(IR); // read raw sensor values

  p = -3*IR[0]-2*IR[1]-IR[2]+IR[3]+2*IR[4]+3*IR[5];

  i=i+p;
  d=p-p_old;
  p_old=p;
  
  if ((p*i)<0) i=0;  // corrige el overshooting - integral windup

  u=kp*p+ki*i+kd*d;
  sapoconcho.drive(forward+u,forward-u,0);

//  Serial.println(p);
  
}
