#include <Arduino.h>
#include "sapoconchoL.h"

sapoconchoL::sapoconchoL(int ain1, int pwma, int bin1, int pwmb){
  this->_ain1=ain1;
  this->_pwma=pwma;
  this->_bin1=bin1;
  this->_pwmb=pwmb;
  pinMode(_ain1,OUTPUT);
  pinMode(_pwma,OUTPUT);
  pinMode(_bin1,OUTPUT);
  pinMode(_pwmb,OUTPUT);
}

void sapoconchoL::forward(int l, int r, int t)
{
  digitalWrite(_ain1,HIGH);
  analogWrite(_pwma,l);
  digitalWrite(_bin1,HIGH);
  analogWrite(_pwmb,r);
  delay(t);
}

void sapoconchoL::reverse(int l, int r, int t)
{
  analogWrite(_ain1,LOW);
  analogWrite(_pwma,l);
  analogWrite(_bin1,LOW);
  analogWrite(_pwmb,r);
  delay(t);
}

void sapoconchoL::rotate(int l, int r, int t)
{
  if (t>0)
  {
    digitalWrite(_ain1,HIGH);
    analogWrite(_pwma,l);
    digitalWrite(_bin1,LOW);
    analogWrite(_pwmb,r);
  }
  else
  {
    digitalWrite(_ain1,LOW);
    analogWrite(_pwma,l);
    digitalWrite(_bin1,HIGH);
    analogWrite(_pwmb,r);
  }
  delay(abs(t));
}

void sapoconchoL::brake(int t)
{
    digitalWrite(_ain1,LOW);
    analogWrite(_pwma,0);
    digitalWrite(_bin1,LOW);
    analogWrite(_pwmb,0);
  delay(t);
}

void sapoconchoL::drive(int l, int r, int t)
{
  if (l>0)
  {
    analogWrite(_ain1,HIGH);
    analogWrite(_pwma,l);
  } else {
    analogWrite(_ain1,LOW);
    analogWrite(_pwma,-l);
  }
  
  if (r>0)
  {
    analogWrite(_bin1,HIGH);
    analogWrite(_pwmb,r);    
  } else {
    analogWrite(_bin1,LOW);
    analogWrite(_pwmb,-r);
  }
  
  delay(t);
}
