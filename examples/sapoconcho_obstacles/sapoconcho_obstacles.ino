// programa básico para Sapoconcho para evitar obstáculos usando los sensores US

#include <L9110.h>
L9110 sapoconcho;

#include <NewPing.h>
NewPing sonar_L(8,8,50);  // trigger y echo al pin 8, distancia máxima limitada a 50cm
NewPing sonar_R(7,7,50);

void setup() {}

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
    if (dist_L>dist_R) sapoconcho.rotate(250);
    else sapoconcho.rotate(-250);
  }
  else sapoconcho.forward(240,240,0);
  
}
