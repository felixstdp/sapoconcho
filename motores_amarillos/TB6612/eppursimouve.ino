// followline PID algorithm for Bricolabs Raptor robot
// Arduino Pro Micro, TB6612 driver, Pololu QTR-8 sensor

// TB6612 driver pinout
const int PWMA = 10; // speed and direction control motor A (left)
const int AIN1 = 8;
const int AIN2 = 9;
const int PWMB = 3; // speed and direction control motor B (right)
const int BIN1 = 6;
const int BIN2 = 7;

void setup() {
}

void loop()
{
  drive(255,255);
  delay(1000);
  drive(255,-255);
  delay(1000);
  drive(-255,-255);
  delay(1000);
  drive(-255,255);
  delay(1000);
}

void drive(int L, int R) // speed for wheels Left and Right, positive is forward
{
  L=constrain(L,-255,255); // avoid PWM overflow
  R=constrain(R,-255,255);
  
  digitalWrite(AIN1, L<0); // switch < and >= if left wheel doesnt spin as expected
  digitalWrite(AIN2, L>=0);
  analogWrite(PWMA, abs(L));
  
  digitalWrite(BIN1, R<0); // switch < and >= if left wheel doesnt spin as expected
  digitalWrite(BIN2, R>=0);
  analogWrite(PWMB, abs(R));
}
