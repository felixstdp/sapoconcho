// Arduino Nano

// TB6612 driver pinout
const int STBY = 12; // standby
const int PWMA = 6; // speed and direction control motor A (left)
const int AIN1 = 8;
const int AIN2 = 7;
const int PWMB = 5; // speed and direction control motor B (right)
const int BIN1 = 2;
const int BIN2 = 4;

void setup() {
  pinMode(STBY,OUTPUT);
  pinMode(PWMA,OUTPUT);
  pinMode(AIN1,OUTPUT);
  pinMode(AIN2,OUTPUT);
  pinMode(PWMB,OUTPUT);
  pinMode(BIN1,OUTPUT);
  pinMode(BIN2,OUTPUT);
}

void loop()
{
  drive(200,200,1000); // forward move
  drive(-200,-200,1000); // reverse move
  drive(200,-200,1000); // rotate right
  drive(-200,200,1000); // rotate left
}

void drive(int L, int R, int t) // speed for wheels Left and Right, positive is forward,time in microseconds
{
  L=constrain(L,-255,255); // avoid PWM overflow
  R=constrain(R,-255,255);
  
  digitalWrite(AIN1, L<0); // switch < and >= if left wheel doesnt spin as expected
  digitalWrite(AIN2, L>=0);
  analogWrite(PWMA, abs(L));
  
  digitalWrite(BIN1, R<0); // switch < and >= if left wheel doesnt spin as expected
  digitalWrite(BIN2, R>=0);
  analogWrite(PWMB, abs(R));
  
  delay(t);
}
