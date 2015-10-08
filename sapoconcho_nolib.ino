// programa básico para Sapoconcho con los movimientos como subrutinas y no como librerías

#define AIA 9 // HIGH >> left backward
#define AIB 10 // HIGH >> left forward
#define BIA 12 // HIGH >> right forward
#define BIB 11 // HIGH >> right backwards

void setup() {

  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
  
}

void loop() {

  switch(random(4)) {

    case 0:
      forward(128,128,1000);
      break;

    case 1:
      reverse(128,128,1000);
      break;

    case 2:
      rotate(128,128,1000);
      break;

    case 3:
      rotate(128,128,-1000);
      break;

    default:
      brake(1000);
      break;
  }
  
  tone(13,1500,50);

}

void forward(int l, int r, int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,l);
  analogWrite(BIA,r);
  analogWrite(BIB,0);
  delay(t);
}

void reverse(int l, int r, int t)
{
  analogWrite(AIA,l);
  analogWrite(AIB,0);
  analogWrite(BIA,0);
  analogWrite(BIB,r);
  delay(t);
}

void rotate(int l, int r, int t)
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

void brake(int t)
{
  analogWrite(AIA,0);
  analogWrite(AIB,0);
  analogWrite(BIA,0);
  analogWrite(BIB,0);
  delay(t);
}

void drive(int l, int r, int t)
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
