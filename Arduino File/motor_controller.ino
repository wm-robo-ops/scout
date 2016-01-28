#include <Servo.h>

Servo x_servo;
Servo y_servo;

const int x_pin = 5;
const int y_pin = 6;

int x = 1500;
int y = 1500;
char val = ' ';

long current_time = 0;
long last_time = 0;
const int timeout = 500;
char end_char = '.';

void setup()
{
  Serial.begin(9600);
  x_servo.attach(x_pin);
  y_servo.attach(y_pin);

  last_time = millis();
}

void loop()
{
  if((millis()-last_time)>timeout){
    x_servo.writeMicroseconds(1500);
    y_servo.writeMicroseconds(1500);
    Serial.println("Timeout!");
    Serial.println(millis());
    last_time = millis();
  }
  if(Serial.available()>0){
    val = Serial.read();
    if(val=='x'){
      x = 0;
      for(int n = 3; n >=0; n -= 1){
        while(Serial.available()==0){}
        x = x + (Serial.read()-48)*round(pow(10,n));
      }
      while(Serial.available()==0){}
      end_char = Serial.read();
      if(end_char== ';'){
        x_servo.writeMicroseconds(x);
      }
      else{

    }

    }
    else if(val=='y'){
      y = 0;
      for(int n = 3; n >=0; n -= 1){
        while(Serial.available()==0){}
        y = y + (Serial.read()-48)*round(pow(10,n));
      }
      while(Serial.available()==0){}
      end_char = Serial.read();
      if(end_char == ';'){
        y_servo.writeMicroseconds(y);
      }
    }
    last_time = millis();
  }

}
