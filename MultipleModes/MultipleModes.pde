//This is a test program to see if what i want to do is possible.
//What this program does is see what state the switches are at
//When you turn the box on, so that then it can set a mode. 
//but then it is able to continue use the switches during the program
//without changing modes
int switch1pin = A0;
int switch1 = 0;
int motor3a = 04;
int motor3b = 05;
int mode = 0;
//i'll see if its working by one of the switch inputs, setting 
//a bidirectional LED red or green depending on what state it is in
//at when turning it on, but then afterwards in the void loop, this should
//hopefully not keep changing after its decided which one will be lit at startup.
//i'll test this by using the same switch to change direction of the 
//motor conneccted to motor 3, and in different modes it will change which 
//direction it is going depending on its mode. 
int ledg = 12;
int ledr = 13;
void setup() {
  pinMode(ledg, OUTPUT);
  pinMode(ledr, OUTPUT);
  pinMode(motor3a, OUTPUT);
  pinMode(motor3b, OUTPUT);  
  switch1 = analogRead(switch1pin);
  if (switch1 > 500) {
    mode = 1;
  }
}
void loop() {
  switch1 = analogRead(switch1pin);
  if (mode == 0) {
    digitalWrite(ledg, HIGH);
    digitalWrite(ledr, LOW);
    if(switch1 < 500){
      digitalWrite(motor3a, HIGH);
      digitalWrite(motor3b, LOW);
    }
    if(switch1 > 500){
      digitalWrite(motor3a, LOW);
      digitalWrite(motor3b, HIGH); 
    }
  }
  if (mode == 1) {
    digitalWrite(ledr, HIGH);
    digitalWrite(ledg, LOW);
    if(switch1 > 500){
      digitalWrite(motor3a, HIGH);
      digitalWrite(motor3b, LOW);
    }
    if(switch1 < 500){
      digitalWrite(motor3a, LOW);
      digitalWrite(motor3b, HIGH); 
    }
  }
}
    
