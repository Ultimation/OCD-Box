//This is mode 2
//This is the mode that is designed to completely piss off people
//who have OCD ;D. 
//It simply allows you to put all of the switches up, apart from one of them. 
//i may make it so that you have to start it like this, and that will decide
//which pin you cant put up, but for now, i'll just have one pin defined
//it will be the 5th one.
int switch5pin = A4;
int switch5 = 0;
int motor1a = 00;
int motor1b = 01;
int motor2a = 02;
int motor2b = 03;
int motor3a = 04;
int motor3b = 05;
int motor4a = 06;
int motor4b = 07;
int motor5a = 8;
int motor5b = 9;
int motor6a = 10;
int motor6b = 11;
int ledg = 12;
int ledr = 13;
void setup() {
  pinMode(motor1a, OUTPUT);
  pinMode(motor1b, OUTPUT);
  pinMode(motor2a, OUTPUT);
  pinMode(motor2b, OUTPUT);
  pinMode(motor3a, OUTPUT);
  pinMode(motor3b, OUTPUT);
  pinMode(motor4a, OUTPUT);
  pinMode(motor4b, OUTPUT);
  pinMode(motor5a, OUTPUT);
  pinMode(motor5b, OUTPUT);
  pinMode(motor6a, OUTPUT);
  pinMode(motor6b, OUTPUT);
  pinMode(ledg, OUTPUT);
  pinMode(ledr, OUTPUT);
}
void loop() {
  switch5 = analogRead(switch5pin);
  digitalWrite(motor1a, HIGH);
  digitalWrite(motor1b, LOW);
  digitalWrite(motor2a, HIGH);
  digitalWrite(motor2b, LOW);
  digitalWrite(motor3a, HIGH);
  digitalWrite(motor3b, LOW);
  digitalWrite(motor4a, HIGH);
  digitalWrite(motor4b, LOW);
  digitalWrite(motor6a, HIGH);
  digitalWrite(motor6b, LOW); 
  if (switch5 > 500) {
    digitalWrite(motor5a, LOW);
    digitalWrite(motor5b, HIGH);
    digitalWrite(ledg, LOW);
    digitalWrite(ledr, HIGH);
  }
  else {
    digitalWrite(motor5a, HIGH);
    digitalWrite(motor5b, LOW);
    digitalWrite(ledg, HIGH);
    digitalWrite(ledr, LOW);
  }
}
