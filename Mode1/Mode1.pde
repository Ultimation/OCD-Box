//OCD BOX mode 1
//mode 1 is the mode where it will be happy with the patterns specified
//in http://ultimationee.blogspot.com/2011/06/patterns.html
//I have yet to decide if it will try to put it into those patterns, or just 
//reset all the pins yet, it currently resets them all as i can imagine 
//that being a lot easier to program.
int switch1pin = A0;
int switch2pin = A1;
int switch3pin = A2;
int switch4pin = A3;
int switch5pin = A4;
int switch6pin = A5;
int switch1 = 0;
int switch2 = 0;
int switch3 = 0;
int switch4 = 0;
int switch5 = 0;
int switch6 = 0;
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
  switch1 = analogRead(switch1pin);
  switch2 = analogRead(switch2pin);
  switch3 = analogRead(switch3pin);
  switch4 = analogRead(switch4pin);
  switch5 = analogRead(switch5pin);
  switch6 = analogRead(switch6pin);
//the good codes will be here, if it is nto a good pattern
//then it must flick them all back to the start.
  if (((switch1 + switch2 + switch3 + switch4 + switch5 + switch6) < 500)|| (switch1 > 500 && switch2 > 500 && switch3 > 500 && switch4 > 500 && switch5 > 500 && switch6 > 500) || ((switch1 + switch2 + switch3) < 500 && switch4 > 500 && switch5 > 500 && switch6 > 500) || ((switch4 + switch5 + switch6) < 500 && switch1 > 500 && switch2 > 500 && switch3 > 500  ) || ((switch4 + switch5 + switch6) < 500 && switch1 > 500 && switch2 > 500 && switch3 > 500  ) || ((switch2 + switch4 + switch6) < 500 && switch1 > 500 && switch3 > 500 && switch5 > 500  ) || ((switch1 + switch3 + switch5) < 500 && switch2 > 500 && switch4 > 500 && switch6 > 500  ) || ((switch1 + switch2 + switch5 + switch6) < 500 && switch3 > 500 && switch4 > 500) || ((switch3 + switch4) < 500 && switch1 > 500 && switch2 > 500 && switch5 > 500 && switch6 > 500) || ((switch2 + switch5) < 500 && switch1 > 500 && switch2 > 500 && switch4 > 500 && switch6 > 500) || ((switch1 + switch3 + switch4 + switch6) < 500 && switch2 > 500 && switch5 > 500)){
    //In otherwords, all low.
    digitalWrite(motor1a, HIGH);
    digitalWrite(motor1b, LOW);
    digitalWrite(motor2a, HIGH);
    digitalWrite(motor2b, LOW);
    digitalWrite(motor3a, HIGH);
    digitalWrite(motor3b, LOW);
    digitalWrite(motor4a, HIGH);
    digitalWrite(motor4b, LOW);
    digitalWrite(motor5a, HIGH);
    digitalWrite(motor5b, LOW);
    digitalWrite(motor6a, HIGH);
    digitalWrite(motor6b, LOW);
    digitalWrite(ledg, HIGH);
    digitalWrite(ledr, LOW);
  }

//This makes them all back to normal. 
  else {
    digitalWrite(ledr, HIGH); 
    digitalWrite(ledg, LOW);
    if(switch1 < 500){
      digitalWrite(motor1a, HIGH);
      digitalWrite(motor1b, LOW);
    }
    if(switch1 > 500){
      digitalWrite(motor1a, LOW);
      digitalWrite(motor1b, HIGH);
    }
    if(switch2 < 500){
      digitalWrite(motor2a, HIGH);
      digitalWrite(motor2b, LOW);
    }
    if(switch2 > 500){
      digitalWrite(motor2a, LOW);
      digitalWrite(motor2b, HIGH);
    }
    if(switch3 < 500){
      digitalWrite(motor3a, HIGH);
      digitalWrite(motor3b, LOW);
    }
    if(switch3 > 500){
      digitalWrite(motor3a, LOW);
      digitalWrite(motor3b, HIGH);
    }
    if(switch4 < 500){
      digitalWrite(motor4a, HIGH);
      digitalWrite(motor4b, LOW);
    }
    if(switch4 > 500){
      digitalWrite(motor4a, LOW);
      digitalWrite(motor4b, HIGH);
    }
    if(switch5 < 500){
      digitalWrite(motor5a, HIGH);
      digitalWrite(motor5b, LOW);
    }
    if(switch5 > 500){
      digitalWrite(motor5a, LOW);
      digitalWrite(motor5b, HIGH);
    }
    if(switch6 < 500){
      digitalWrite(motor6a, HIGH);
      digitalWrite(motor6b, LOW);
    }
    if(switch6 > 500){
      digitalWrite(motor6a, LOW);
      digitalWrite(motor6b, HIGH);
    }
  }
}
