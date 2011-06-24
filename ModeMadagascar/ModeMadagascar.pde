  else { //If we're not in a mode, WTF HAS HAPPNENED, FLASH LEDS
  //SHUT DOWN EVERYTHING
    digitalWrite(motor1a, LOW);
    digitalWrite(motor1b, LOW);
    digitalWrite(motor2a, LOW);
    digitalWrite(motor2b, LOW);
    digitalWrite(motor3a, LOW);
    digitalWrite(motor3b, LOW);
    digitalWrite(motor4a, LOW);
    digitalWrite(motor4b, LOW);
    digitalWrite(motor5a, LOW);
    digitalWrite(motor5b, LOW);
    digitalWrite(motor6a, LOW);
    digitalWrite(motor6b, LOW); 
    digitalWrite(ledr, HIGH);
    digitalWrite(ledg, LOW);
    delay(100);
    digitalWrite(ledg, HIGH);
    digitalWrite(ledr, LOW);
    delay(100);
  }
