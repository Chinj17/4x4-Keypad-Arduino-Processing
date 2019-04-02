#include <Keypad.h>

const byte ROWS = 4;  //-----> Chnage this according to your keypad 
const byte COLS = 4;  //-----> Change this according to your keypad

char keys[ROWS][COLS] = { // Define the Keymap. Change it according to your keypad 4x3 or 4x4 
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};

byte rowPins[ROWS] = { 2, 3, 4, 5 };    //------> R0 = 2, R1 = 3, R2 = 4 and R3 = 5.

byte colPins[COLS] = { 6, 7, 8 ,9};    //------->  C0 = 6, C1 = 7, C2 = 8 and C3 = 9.


Keypad kpd = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );          // Creates the Keypad

void setup()
{  
  Serial.begin(9600);
}

void loop()
{
  char key = kpd.getKey();
  if(key)
  {
    Serial.print(key);
    Serial.print(".");   //-----> helps to distinguish in processing 
  }
}

