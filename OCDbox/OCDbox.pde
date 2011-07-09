//This is the main version for OCD box
//It contains everything, including multiple modes.
//firstly, all those lovely registers and such.
int s1p = A0;
int s2p = A1;
int s3p = A2;
int s4p = A3;
int s5p = A4;
int s6p = A5;
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
void setup() {
  //pinmodes
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
  //This is where the mode setup is. Firstly the inputs...
  s1 = analogRead(s1p);
  s2 = analogRead(s2p);
  s3 = analogRead(s3p);
  s4 = analogRead(s4p);
  s5 = analogRead(s5p);
  s6 = analogRead(s6p);
  //Now we know what we've got... time to set up what means what.
  if (((s1 + s2 + s3 + s4 + s6) < 500) && s5 > 500) {
    mode = 2;
  }
  //if they're all high but 5, it goes into mode 2
  else if (s1 > 500 && s2 > 500 && s3 > 500 && s4 > 500 && s5 > 500 && s6 > 500) {
    mode = 1;
  }
  else {
    mode = 0;
  }
}
//So that should set it at one of the modes when its turned on, and not be bothered again
void loop() { 
  //get inputs again as they may have changed and this is the loop
  s1 = analogRead(s1p);
  s2 = analogRead(s2p);
  s3 = analogRead(s3p);
  s4 = analogRead(s4p);
  s5 = analogRead(s5p);
  s6 = analogRead(s6p);  
  //Now which mode we're in.
  if (mode == 0){
    if(s1 < 500){
      digitalWrite(m1a, HIGH);
      digitalWrite(m1b, LOW);
    }
    if(s1 > 500){
      digitalWrite(m1a, LOW);
      digitalWrite(m1b, HIGH);
    }
    if(s2 < 500){
      digitalWrite(m2a, HIGH);
      digitalWrite(m2b, LOW);
    }
    if(s2 > 500){
      digitalWrite(m2a, LOW);
      digitalWrite(m2b, HIGH);
    }
    if(s3 < 500){
      digitalWrite(m3a, HIGH);
      digitalWrite(m3b, LOW);
    }
    if(s3 > 500){
      digitalWrite(m3a, LOW);
      digitalWrite(m3b, HIGH);
    }
    if(s4 < 500){
      digitalWrite(m4a, HIGH);
      digitalWrite(m4b, LOW);
    }
    if(s4 > 500){
      digitalWrite(m4a, LOW);
      digitalWrite(m4b, HIGH);
    }
    if(s5 < 500){
      digitalWrite(m5a, HIGH);
      digitalWrite(m5b, LOW);
    }
    if(s5 > 500){
      digitalWrite(m5a, LOW);
      digitalWrite(m5b, HIGH);
    }
    if(s6 < 500){
      digitalWrite(m6a, HIGH);
      digitalWrite(m6b, LOW);
    }
    if(s6 > 500){
      digitalWrite(m6a, LOW);
      digitalWrite(m6b, HIGH);
    } //And the lovely LEDs that will light if any switch is high
    if(s1 > 500 || s2 > 500 || s3 > 500 || s4 > 500 || s5 > 500 || s6 > 500) {
      digitalWrite(ledr, HIGH);
      digitalWrite(ledg, LOW);
    }
    else {
      digitalWrite(ledr, LOW);
      digitalWrite(ledg, HIGH);
    }
  }
  else if (mode == 1){
    if (((s1 + s2 + s3 + s4 + s5 + s6) < 500)|| (s1 > 500 && s2 > 500 && s3 > 500 && s4 > 500 && s5 > 500 && s6 > 500) || ((s1 + s2 + s3) < 500 && s4 > 500 && s5 > 500 && s6 > 500) || ((s4 + s5 + s6) < 500 && s1 > 500 && s2 > 500 && s3 > 500  ) || ((s4 + s5 + s6) < 500 && s1 > 500 && s2 > 500 && s3 > 500  ) || ((s2 + s4 + s6) < 500 && s1 > 500 && s3 > 500 && s5 > 500  ) || ((s1 + s3 + s5) < 500 && s2 > 500 && s4 > 500 && s6 > 500  ) || ((s1 + s2 + s5 + s6) < 500 && s3 > 500 && s4 > 500) || ((s3 + s4) < 500 && s1 > 500 && s2 > 500 && s5 > 500 && s6 > 500 )  || ((s2 + s5) < 500 && s1 > 500 && s2 > 500 && s4 > 500 && s6 > 500) || ((s1 + s3 + s4 + s6) < 500 && s2 > 500 && s5 > 500)){
      //In otherwords, all patterns
      digitalWrite(m1a, HIGH);
      digitalWrite(m1b, LOW);
      digitalWrite(m2a, HIGH);
      digitalWrite(m2b, LOW);
      digitalWrite(m3a, HIGH);
      digitalWrite(m3b, LOW);
      digitalWrite(m4a, HIGH);
      digitalWrite(m4b, LOW);
      digitalWrite(m5a, HIGH);
      digitalWrite(m5b, LOW);
      digitalWrite(m6a, HIGH);
      digitalWrite(m6b, LOW);
      digitalWrite(ledg, HIGH);
      digitalWrite(ledr, LOW);
    }
  
  //This makes them all back to normal. 
    else {
      digitalWrite(m1a, LOW);
      digitalWrite(m1b, HIGH);
      digitalWrite(m2a, LOW);
      digitalWrite(m2b, HIGH);
      digitalWrite(m3a, LOW);
      digitalWrite(m3b, HIGH);
      digitalWrite(m4a, LOW);
      digitalWrite(m4b, HIGH);
      digitalWrite(m5a, LOW);
      digitalWrite(m5b, HIGH);
      digitalWrite(m6a, LOW);
      digitalWrite(m6b, HIGH);
      digitalWrite(ledr, HIGH); 
      digitalWrite(ledg, LOW);
    }
  }
  else if (mode == 2){
    if (s5 > 500) {
      digitalWrite(m1a, HIGH);
      digitalWrite(m1b, LOW);
      digitalWrite(m2a, HIGH);
      digitalWrite(m2b, LOW);
      digitalWrite(m3a, HIGH);
      digitalWrite(m3b, LOW);
      digitalWrite(m4a, HIGH);
      digitalWrite(m4b, LOW);
      digitalWrite(m5a, HIGH);
      digitalWrite(m5b, LOW);
      digitalWrite(m6a, HIGH);
      digitalWrite(m6b, LOW); 
      digitalWrite(ledg, HIGH);
      digitalWrite(ledr, LOW);
    }
    else {
      digitalWrite(m1a, HIGH);
      digitalWrite(m1b, LOW);
      digitalWrite(m2a, HIGH);
      digitalWrite(m2b, LOW);
      digitalWrite(m3a, HIGH);
      digitalWrite(m3b, LOW);
      digitalWrite(m4a, HIGH);
      digitalWrite(m4b, LOW);
      digitalWrite(m5a, LOW);
      digitalWrite(m5b, HIGH);
      digitalWrite(m6a, HIGH);
      digitalWrite(m6b, LOW); 
      digitalWrite(ledg, LOW); 
      digitalWrite(ledr, HIGH);
    }
  }
  else { //If we're not in a mode, WTF HAS HAPPNENED, FLASH LEDS
  //SHUT DOWN EVERYTHING
    digitalWrite(m1a, LOW);
    digitalWrite(m1b, LOW);
    digitalWrite(m2a, LOW);
    digitalWrite(m2b, LOW);
    digitalWrite(m3a, LOW);
    digitalWrite(m3b, LOW);
    digitalWrite(m4a, LOW);
    digitalWrite(m4b, LOW);
    digitalWrite(m5a, LOW);
    digitalWrite(m5b, LOW);
    digitalWrite(m6a, LOW);
    digitalWrite(m6b, LOW); 
    digitalWrite(ledr, HIGH);
    digitalWrite(ledg, LOW);
    delay(100);
    digitalWrite(ledg, HIGH);
    digitalWrite(ledr, LOW);
    delay(100);
  }
}

