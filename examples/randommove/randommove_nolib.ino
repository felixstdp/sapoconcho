#define AIA 9 // HIGH >> left backward
#define AIB 10 // HIGH >> left forward
#define BIA 12 // HIGH >> right forward
#define BIB 11 // HIGH >> right backwards

void setup() {

  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  
}

void loop() {

  analogWrite(AIA,random(256));
  analogWrite(AIB,random(256));
  analogWrite(BIA,random(256));
  analogWrite(BIB,random(256));
  delay(1000);

}
