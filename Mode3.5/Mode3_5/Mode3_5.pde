#include <TrueRandom.h>
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
int r1pin = 0;
int r2pin = 0;
int r3pin = 0;
int r4pin = 0;
int r5pin = 0;
int r6pin = 0;
int ledg = 12;
int ledr = 13;
int mode = 3;
int stage = 0;
void setup() {
  Serial.begin(9600);
  pinMode(ledg, OUTPUT);
  pinMode(ledr, OUTPUT);
  while(r1pin == r2pin || r1pin == r3pin || r1pin == r4pin || r1pin == r5pin || r1pin == r6pin || r2pin == r3pin || r2pin == r4pin || r2pin == r5pin || r2pin == r6pin || r3pin == r4pin || r3pin == r5pin || r3pin == r6pin || r4pin == r5pin || r4pin == r6pin || r5pin == r6pin) {
    r1pin = TrueRandom.random(0, 6);
    r2pin = TrueRandom.random(0, 6);
    r3pin = TrueRandom.random(0, 6);
    r4pin = TrueRandom.random(0, 6);    
    r5pin = TrueRandom.random(0, 6);
    r6pin = TrueRandom.random(0, 6);
    digitalWrite(ledr, LOW);
    digitalWrite(ledg, HIGH);
    delay(2);
    digitalWrite(ledg, LOW);
    digitalWrite(ledr, HIGH);
    delay(1);
  }
  Serial.println(r1pin, DEC);
  Serial.println(r2pin, DEC);
  Serial.println(r3pin, DEC);
  Serial.println(r4pin, DEC);
  Serial.println(r5pin, DEC);
  Serial.println(r6pin, DEC);
}

void loop() {
  s1 = analogRead(r1pin);
  s2 = analogRead(r2pin);
  s3 = analogRead(r3pin);
  s4 = analogRead(r4pin);
  s5 = analogRead(r5pin);
  s6 = analogRead(r6pin);
  delay(500);
  Serial.println(stage, DEC);
  if (mode == 3){
    if (stage == 0) {
      if (s1 > 500 && (s2 + s3 + s4 + s5 + s6) < 500){
        stage = 1;
        digitalWrite(ledr, LOW);
        digitalWrite(ledg, HIGH);
      }
      else {
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
        }
        else if((s1 + s2 + s3 + s4 + s5 + s6) > 500) {
          digitalWrite(ledr, HIGH);
          digitalWrite(ledg, LOW);
        }
        else {
          digitalWrite(ledr, LOW);
          digitalWrite(ledg, HIGH);
        }
      }
    }
    if (stage == 1) {
      if (s1 > 500 && (s2 + s3 + s4 + s5 + s6) < 500) {
        stage = 1;
        digitalWrite(ledr, LOW);
        digitalWrite(ledg, HIGH);
      }
      else if(s1 > 500 && s2 > 500 && (s3 + s4 + s5 + s6) < 500) {
        stage = 2;
        digitalWrite(ledr, LOW);
        digitalWrite(ledg, HIGH);
      }
      else{
        stage = 0;
      }
    }
     if (stage == 2) {
       if (s1 > 500 && s2 > 500 && (s3 + s4 + s5 + s6) < 500) {
         stage = 2;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
       else if(s1 > 500 && s2 > 500 && s3 > 500 && (s4 + s5 + s6) < 500) {
         stage = 3;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
       else {
         stage = 0;       
       }
     }
     if (stage == 3) {
       if(s1 > 500 && s2 > 500 && s3 > 500 && (s4 + s5 + s6) < 500) {
         stage = 3;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
       else if(s1 > 500 && s2 > 500 && s3 > 500 && s4 > 500 && (s5 + s6) < 500) {
         stage = 4;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
       else {
         stage = 0;
       }
     }
     if (stage == 4) {
       if(s1 > 500 && s2 > 500 && s3 > 500 && s4 > 500 && (s5 + s6) < 500 ) {   
         stage = 4;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
       else if(s1 > 500 && s2 > 500 && s3 > 500 && s4 > 500 && s5 > 500 && s6 < 500 ){
         stage = 5;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
     }
     if (stage == 5) {
       if(s1 > 500 && s2 > 500 && s3 > 500 && s4 > 500 && s5 > 500 && s6 < 500 ) {
         stage = 5;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);       
       }
       else if(s1+s2+s3+s4+s5+s6 > 500) {
         stage = 6;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
       else {
         stage = 0;
       }
     }  
     if (stage == 6){
       if(s1+s2+s3+s4+s5+s6 > 500) {
         stage = 6;
         digitalWrite(ledr, LOW);
         digitalWrite(ledg, HIGH);
       }
       else {
         stage = 0;
         digitalWrite(ledg, LOW);
         digitalWrite(ledr, HIGH);
       }
     }
  }
  else {
    digitalWrite(ledr, HIGH);
    digitalWrite(ledg, LOW);
    delay(200);
    digitalWrite(ledg, HIGH);
    digitalWrite(ledr, LOW);
    delay(200);
  }
}

