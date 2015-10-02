#include <Arduino.h>
#include "sapoconcho.h"

#define AIA 9 // HIGH or 255 >> left backward
#define AIB 10 // HIGH or 255 >> left forward
#define BIA 12 // HIGH or 255 >> right forward
#define BIB 11 // HIGH or 255 >> right backwards

sapoconcho::sapoconcho(){
  pinMode(AIA,OUTPUT);
  pinMode(AIB,OUTPUT);
  pinMode(BIA,OUTPUT);
  pinMode(BIB,OUTPUT);
}

void sapoconcho::forward(int l, int r, int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,l);
  analogWrite(BIA,r);
  analogWrite(BIB,0);
  delay(t);
}

void sapoconcho::reverse(int l, int r, int t)
{
  analogWrite(AIA,l);
  analogWrite(AIB,0);
  analogWrite(BIA,0);
  analogWrite(BIB,r);
  delay(t);
}

void sapoconcho::rotate(int l, int r, int t)
{
  if (t>0)
  {
    analogWrite(AIA,l);
    analogWrite(AIB,0);
    analogWrite(BIA,r);
    analogWrite(BIB,0);
  }
  else
  {
    analogWrite(AIA,0);
    analogWrite(AIB,l);
    analogWrite(BIA,0);
    analogWrite(BIB,r);
  }
  delay(abs(t));
}

void sapoconcho::brake(int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,0);
  analogWrite(BIA,0);
  analogWrite(BIB,0);
  delay(t);
}

void sapoconcho::drive(int l, int r, int t)
{
  if (l>0)
  {
    analogWrite(AIA,0);
    analogWrite(AIB,l);
  } else {
    analogWrite(AIA,-l);
    analogWrite(AIB,0);
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
