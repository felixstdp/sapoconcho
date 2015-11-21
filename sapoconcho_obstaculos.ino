// programa básico para Sapoconcho para evitar obstáculos usando los sensores US

#define AIA 11 // HIGH >> left backward
#define AIB 6 // HIGH >> left forward
#define BIA 9 // HIGH >> right forward
#define BIB 10 // HIGH >> right backwards

#include <NewPing.h>
NewPing sonar_L(8,8,50);  // trigger y echo al pin 8, distancia máxima limitada a 50cm
NewPing sonar_R(7,7,50);

void setup() {

  pinMode(AIA,OUTPUT);
  pinMode(AIB,OUTPUT);
  pinMode(BIA,OUTPUT);
  pinMode(BIB,OUTPUT);
  
}

void loop()
{
  
// lee los sensores HC-SR04

  delay(30);  // necesario para que el sensor espere el eco del pulso
  float dist_L = sonar_L.ping_cm();
  if (dist_L==0) {dist_L=50;}  // corrige las distancias mayores de 50cm que dan lectura 0

  delay(30);
  float dist_R = sonar_R.ping_cm();
  if (dist_R==0) {dist_R=50;}
 
  float dist=min(dist_L,dist_R);

// gira para evitar obstaculos
 
  if (dist<20)
  {
    if (dist_L>dist_R) rotate(250);
    else rotate(-250);
  }
  else forward(240,240,0);
  
}

void forward(int l, int r, int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,l);
  analogWrite(BIA,0);
  analogWrite(BIB,r);
  delay(t);
}

void rotate(int t)
{
  if (t>0)
  {
    analogWrite(AIA,200);
    analogWrite(AIB,0);
    analogWrite(BIA,0);
    analogWrite(BIB,200);
  }
  else
  {
    analogWrite(AIA,0);
    analogWrite(AIB,200);
    analogWrite(BIA,200);
    analogWrite(BIB,0);
  }
  delay(abs(t));
}
