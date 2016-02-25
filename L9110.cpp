#include <Arduino.h>
#include "L9110.h"

#define AIA 10
#define AIB 11
#define BIA 6
#define BIB 9

L9110::L9110(){
  pinMode(AIA,OUTPUT);
  pinMode(AIB,OUTPUT);
  pinMode(BIA,OUTPUT);
  pinMode(BIB,OUTPUT);
}

void L9110::forward(int l, int r, int t)
{
  analogWrite(AIA,l);
  analogWrite(AIB,0);
  analogWrite(BIA,r);
  analogWrite(BIB,0);
  delay(t);
}

void L9110::reverse(int l, int r, int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,l);
  analogWrite(BIA,0);
  analogWrite(BIB,r);
  delay(t);
}

void L9110::rotate(int l, int r, int t)
{
  if (t>0)
  {
    analogWrite(AIA,0);
    analogWrite(AIB,l);
    analogWrite(BIA,r);
    analogWrite(BIB,0);
  }
  else
  {
    analogWrite(AIA,l);
    analogWrite(AIB,0);
    analogWrite(BIA,0);
    analogWrite(BIB,r);
  }
  delay(abs(t));
}

void L9110::brake(int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,0);
  analogWrite(BIA,0);
  analogWrite(BIB,0);
  delay(t);
}

void L9110::drive(int l, int r, int t)
{
  if (l>0)
  {
    analogWrite(AIA,l);
    analogWrite(AIB,0);
  } else {
    analogWrite(AIA,0);
    analogWrite(AIB,-l);
  }
  
  if (r>0)
  {
    analogWrite(BIA,r);
    analogWrite(BIB,0);    
  } else {
    analogWrite(BIA,0);
    analogWrite(BIB,-r);
  }
  
  delay(t);
}
