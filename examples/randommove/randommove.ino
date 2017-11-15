#define AIA 3 // HIGH >> left backward
#define AIB 5 // HIGH >> left forward
#define BIA 6 // HIGH >> right forward
#define BIB 9 // HIGH >> right backwards

void setup() {

  pinMode(AIA,OUTPUT);
  pinMode(AIB,OUTPUT);
  pinMode(BIA,OUTPUT);
  pinMode(BIB,OUTPUT);
  
}

void loop() {

  analogWrite(AIA,random(256));
  analogWrite(AIB,random(256));
  analogWrite(BIA,random(256));
  analogWrite(BIB,random(256));
  delay(1000);

}
