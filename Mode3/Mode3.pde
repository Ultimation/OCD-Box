//This is mode 3, where you have to put up each switch in the correct pattern
//In this one, if you get it wrong it will put them all back
//Not implimented yet: Randomly choosing pattern on reset
//Pattern will always be the same. 
//setup is the same
int s1pin = A0;
int s2pin = A1;
int s3pin = A2;
int s4pin = A3;
int s5pin = A4;
int s6pin = A5;
int s1 = 0;
int s2 = 0;
int s3 = 0;
int s4 = 0;
int s5 = 0;
int s6 = 0;
int m1a = 00;
int m1b = 01;
int m2a = 02;
int m2b = 03;
int m3a = 04;
int m3b = 05;
int m4a = 06;
int m4b = 07;
int m5a = 8;
int m5b = 9;
int m6a = 10;
int m6b = 11;
int ledg = 12;
int ledr = 13;
int mode = 0;
int stage = 0;
//stage = how far along they've got
void setup() {
  pinMode(m1a, OUTPUT);
  pinMode(m1b, OUTPUT);
  pinMode(m2a, OUTPUT);
  pinMode(m2b, OUTPUT);
  pinMode(m3a, OUTPUT);
  pinMode(m3b, OUTPUT);
  pinMode(m4a, OUTPUT);
  pinMode(m4b, OUTPUT);
  pinMode(m5a, OUTPUT);
  pinMode(m5b, OUTPUT);
  pinMode(m6a, OUTPUT);
  pinMode(m6b, OUTPUT);
  pinMode(ledg, OUTPUT);
  pinMode(ledr, OUTPUT);
  s1 = analogRead(s1pin);
  s2 = analogRead(s2pin);
  s3 = analogRead(s3pin);
  s4 = analogRead(s4pin);
  s5 = analogRead(s5pin);
  s6 = analogRead(s6pin);
  /*new mode here
  if () {
    mode = 3;
  }
  */ 
  else if (((s1 + s2 + s3 + s4 + s6) < 500) && s5 > 500) {
    mode = 2;
  }
  else if (s1 > 500 && s2 > 500 && s3 > 500 && s4 > 500 && s5 > 500 && s6 > 500) {
    mode = 1;
  }

  else {
    mode = 0;
  }
}
void loop() { 
  s1 = analogRead(s1pin);
  s2 = analogRead(s2pin);
  s3 = analogRead(s3pin);
  s4 = analogRead(s4pin);
  s5 = analogRead(s5pin);
  s6 = analogRead(s6pin);  
  else if (mode == 3){
    //Here be the program to start
    //First to choose the pattern, to make it simple and then swap later
    //Let's make it you have to flick them from left to right
    if (stage == 0) {
      //if all are down but the correct one, make stage = 1
      if (){
        stage = 1;
      }
      /*if switch 1 is up, switch it off
      if switch 2 is down, keep it down, ect */
    }
    if (stage == 1) {
      /*if all are down but the correct one to get to stage 1, do nothing
      else if all are down but the next stage one too*/
      else if() {
        stage = 2;
      }
      else(){
        stage = 0;
      }
     if (stage == 2) {
       //continue
     }
