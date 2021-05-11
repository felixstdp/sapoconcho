#include <Arduino.h>
#include "mclon.h"

mclon::mclon(){
  pinMode(7,OUTPUT); // AIN1, AIN2 invertido
  pinMode(6,OUTPUT); // PWMA
  pinMode(4,OUTPUT); // BIN1, BIN2 invertido
  pinMode(5,OUTPUT); // PWMB
}

void mclon::forward(int l, int r, int t)
{
  digitalWrite(7,HIGH);
  analogWrite(6,l);
  digitalWrite(4,HIGH);
  analogWrite(5,r);
  delay(t);
}

void mclon::reverse(int l, int r, int t)
{
  analogWrite(7,LOW);
  analogWrite(6,l);
  analogWrite(4,LOW);
  analogWrite(5,r);
  delay(t);
}

void mclon::rotate(int l, int r, int t)
{
  if (t>0)
  {
    digitalWrite(7,HIGH);
    analogWrite(6,l);
    digitalWrite(4,LOW);
    analogWrite(5,r);
  }
  else
  {
    digitalWrite(7,LOW);
    analogWrite(6,l);
    digitalWrite(4,HIGH);
    analogWrite(5,r);
  }
  delay(abs(t));
}

void mclon::brake(int t)
{
    digitalWrite(7,LOW);
    analogWrite(6,0);
    digitalWrite(4,LOW);
    analogWrite(5,0);
  delay(t);
}

void mclon::drive(int l, int r, int t)
{
  if (l>0)
  {
    analogWrite(7,HIGH);
    analogWrite(6,l);
  } else {
    analogWrite(7,LOW);
    analogWrite(6,-l);
  }
  
  if (r>0)
  {
    analogWrite(4,HIGH);
    analogWrite(5,r);    
  } else {
    analogWrite(4,LOW);
    analogWrite(5,-r);
  }
  
  delay(t);
}
