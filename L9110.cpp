#include <Arduino.h>
#include "L9110.h"

/*
            < ARDUINO PRO MICRO >
             
                |TX0   RAW| Batteries +
                |RX1   GND| Batteries -
                |GND   RST|
                |GND   VCC| Breadboard 5V
                |2     #A3| 
      L9110 BIA |3~    #A2| 
                |4#    #A1| 
      L9110 BIB |5~    #A0| 
      L9110 AIA |6~#    15|
                |7      14| 
                |8#     16| 
      L9110 AIB |9~#  #~10| 
~ PWM
# Analog
*/

/*
              < ARDUINO MICRO >
               
                |MOSI  SCK|
                |SS   MISO|
                |TX0   VIN| Batteries +
                |TX1   GND| Batteries -
                |RST   RST| Reset
                |GND    5V| Breadboard 5V
                |2        | 
                |3~       | 
                |4     #A5| 
                |5~    #A4| 
                |6~    #A3| 
                |7     #A2|
                |8     #A1| 
      L9110 BIA |9~    #A0| 
      L9110 BIB |10~  AREF| 
      L9110 AIA |11~   3V3| 
      L9110 AIB |12~   ~13| 
*/

#define AIA 11 // cambiar según esquema superior si se usa Arduino Pro Micro
#define AIB 12
#define BIA 9
#define BIB 10

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
