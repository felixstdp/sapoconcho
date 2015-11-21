// siguelíneas con algoritmo PID
// utiliza seis sensores analógicos en la parte frontal
// tres a la izquierda y tres a la derecha

int forward=120;
float kp=.08;
float ki=0.03;
float kd=0.0;
float p,d;
float i=0;
float p_old=0;
int u;

#define AIA 11 // HIGH >> left backward
#define AIB 6 // HIGH >> left forward
#define BIA 9 // HIGH >> right forward
#define BIB 10 // HIGH >> right backwards

void setup() {

  pinMode(AIA,OUTPUT);
  pinMode(AIB,OUTPUT);
  pinMode(BIA,OUTPUT);
  pinMode(BIB,OUTPUT);
  
}

void loop()
{
  p=3*analogRead(A1)+2*analogRead(A2)+analogRead(A3)-analogRead(A4)-2*analogRead(A5)-3*analogRead(A6);
  i=i+p;
  d=p-p_old;
  p_old=p;
  
  if ((p*i)<0) i=0;  // corrige el overshooting - integral windup

  u=kp*p+ki*i+kd*d;
  drive(forward-u,forward+u,0);
}

void drive(int l, int r, int t)
{
  if (l>255) l=255;
  if (l<-255) l=-255;
  if (r>255) r=255;
  if (r<-255) r=-255; 
  
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
    analogWrite(BIA,0);
    analogWrite(BIB,r);    
  } else {
    analogWrite(BIA,-r);
    analogWrite(BIB,0);
  }
  
  delay(t);
}
