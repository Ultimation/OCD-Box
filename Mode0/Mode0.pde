//This is a program for OCD Bot, 
//Firstly, we shall get this program to work like a normal MUM (most useless machine)
//However, for OCD bot, we have 6 switches. (Holy shit 6!) 
//For this, as we need a lot of pins, and i'm running this on the Arduino uno, therefore i'll need to use the analogue in for the digital inputs from the switches. As each motor needs 2 inputs and that means 12 outputs to the H drivers!
//The second switches on each arm will just be pure hardware, for simpler programming and construction. Hold down resistor and switch will be connected on one of the control lines to the H driver.
//Also another possible output to either LEDS or Enable lines on the H drivers, depending if i feel like it or not. 
//first, to set which pins are which.
//This just sets each input to have a register
//also to set the varibles that i'll need.
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
//Each motor has a number, same number as the switch, each motor has two inputs for direction. a and b, 00 and 11 are stop, 01 is one direction, 10 is the other direction.
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
//now i'm going too add a little bit, which makes a bi directional
//led be either red or green, depending on which pin is higher. 
//it will be green when the OCD box is happy with what the pattern
//is and when it is not, it will show red (any of the toggles high)
int ledg = 12;
int ledr = 13;
void setup() {
  //This will set all the output pins as outputs. I will have 2 IOs left after this.
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
//this is where the actual program begins
void loop() {
  //first we will need to check the value of the switches
  switch1 = analogRead(switch1pin);
  switch2 = analogRead(switch2pin);
  switch3 = analogRead(switch3pin);
  switch4 = analogRead(switch4pin);
  switch5 = analogRead(switch5pin);
  switch6 = analogRead(switch6pin);
//Now we've got the input value, if they're above a random number inbetween (as the switch will either be at maximum or minimum, anywhere inbetween is fine as a threshold)
  if(switch1 < 500){
    digitalWrite(motor1a, HIGH);
    digitalWrite(motor1b, LOW);
    //This means that it will be moving one direction or another, it will keep moving one direction until the switch is hit. Or keep moving backwards until the limit switch inside the case is hit.
    //It is important to get these the right way around, or it will destroy itself. You can just swap the motor terminals to fix this if easier. 
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
  //That finishes the basic switch back thing
  //This part is the part where if any of the switches are high,
  //the LED will be red, and only if they're all low will it be green
  if(switch1 > 500 || switch2 > 500 || switch3 > 500 || switch4 > 500 || switch5 > 500 || switch6 > 500) {
    digitalWrite(ledr, HIGH);
    digitalWrite(ledg, LOW);
  }
  else {
    digitalWrite(ledr, LOW);
    digitalWrite(ledg, HIGH);
  }
}
//Thats it's very simple for the first program, where it will turn each one off.
//The next step will be too make it like patterns, but thats where it gets more complicated... 
