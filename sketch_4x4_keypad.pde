import processing.serial.*;   //---------> Libraries for Serial Communication
Serial myPort;
import processing.serial.*;
String num = "";
String disp1 = "Enter a number";
String disp2 = "*",j,j2;
PFont f;
String[] a = new String[4];      //--------> To store the data from num so that we get a 4-digit number
int d=0,i=0;
void setup()
{
  size(720,720);
  myPort = new Serial(this,"COM4", 9600);      //----------> initializing COM4 for my serial communication
  myPort.bufferUntil('.');                    //---------> It will look till it finds a comma
  f = createFont("Arial",16,true);
}

void draw()
{
  textFont(f,50);
  fill(255);
  text("4x4 Keypad", 220, 95);
  //Outer box
  fill(0);
  stroke(0);
  rect(210,135,310,395);
  //Display
  fill(102,255,0);
  rect(230,150, 270,90);
  fill(255);
  textFont(f,25);
  text(disp1, 260,185);
  //Information
  fill(0);
  rect(210,550,310,90);
  fill(255);
  textFont(f,17);
  text("1. Enter a 4-digit number",213,570);
  text("2. Press # to register the number",213,590);
  text("3. Press * to enter new number", 213,610);
  text("4. Press 0 to display the number", 213,630);
  
  if(d == 1)                           //---------> Conditions for the asterix which appears will entering a number
  {
    textFont(f,50);
    text(disp2, 330, 240);
  }
  if(d==2)
  {
     textFont(f,50);
    text(disp2, 330, 240);
    text(disp2, 350, 240);
  }
  if(d==3)
  { 
    textFont(f,50);
    text(disp2, 330, 240);
    text(disp2, 350, 240);
    text(disp2, 370, 240);
  }
  if(d==4)    
  {
    textFont(f,50);
    text(disp2, 330, 240);
    text(disp2, 350, 240);
    text(disp2, 370, 240);
    text(disp2, 390, 240);
  }
  if(num.equals("#") == true)  
  {
    if(d >= 5)                 //------> To ensure it's a 4-digit number
    {
      disp1="Error";
      myPort.stop();
      disp2="";
    }
    disp1 = "Thank you";
     j = a[0]+a[1]+a[2]+a[3];
  }
  if(num.equals("*") == true)
  {
    disp1= "Enter new number";
    d=0;
    num="";
    i=0;
  }
  if(num.equals("0") == true)           //----------> displays the 4-digit number when we press 0
  {
    d=0;
    disp1 = j;
  }
  
   // 4x4 Keypad creation 
  
  //1st Row
  stroke(255);
  fill(42,82,190);
  rect(231,242,65,66);
  rect(299,242,65,66);
  rect(366,242,65,66);
  rect(434,242,65,66);
  textFont(f,45);
  fill(255);
  stroke(0);
  text('1',248,290);
  text('2',320,290);
  text('3',385,290);
  text('A',452,290);
  
  //2nd Row
  stroke(255);
  fill(42,82,190);
  rect(231,310,65,65);
  rect(299,310,65,65);
  rect(366,310,65,65);
  rect(434,310,65,65);
  textFont(f,45);
  fill(255);
  stroke(0);
  text('4',248,360);
  text('5',320,360);
  text('6',385,360);
  text('B',452,360);
  
  //3rd Row
  stroke(255);
  fill(42,82,190);
  rect(231,378,65,65);
  rect(299,378,65,65);
  rect(366,378,65,65);
  rect(434,378,65,65);
  textFont(f,45);
  fill(255);
  stroke(0);
  text('7',248,430);
  text('8',320,430);
  text('9',385,430);
  text('C',452,430);
  
  //4th Row
  stroke(255);
  fill(42,82,190);
  rect(231,446,65,65);
  rect(299,446,65,65);
  rect(366,446,65,65);
  rect(434,446,65,65);
  textFont(f,75);
  fill(255);
  stroke(0);
  text('*',247,520);
  textFont(f,45);
  text('0',320,495);
  text('#',385,495);
  text('D',452,495);
  
  //The corrosponding text flickers when we press the keys. These are the comditions for them
  if (num.equals("1") == true)
  {
    fill(0);
    text('1',248,290);
  }
  else if(num.equals("2") == true)
  {
    fill(0);
    text('2',320,290);
  }
  else if(num.equals("3") == true)
  {
    fill(0);
    text('3',385,290);
  }
  else if(num.equals("A") == true)
  {
    fill(0);
    text('A',452,290);
  }
  else if(num.equals("4") == true)
  {
    fill(0);
    text('4',248,360);
  }
  else if(num.equals("5") == true)
  {
    fill(0);
    text('5',320,360);
  }
  else if(num.equals("6") == true)
  {
    fill(0);
    text('6',385,360);
  }
  else if(num.equals("B") == true)
  {
    fill(0);
    text('B',452,360);
  }
  else if(num.equals("7") == true)
  {
    fill(0);
    text('7',248,430);
  }
  else if(num.equals("8") == true)
  {
    fill(0);
    text('8',320,430);
  }
  else if(num.equals("9") == true)
  {
    fill(0);
    text('9',385,430);
  }
  else if(num.equals("C") == true)
  {
    fill(0);
    text('C',452,430);
  }
  else if(num.equals("*") == true)
  {
    fill(0);
    text('*',247,520);
  }
  else if(num.equals("0") == true)
  {
    fill(0);
    text('0',320,495);
  }
  else if(num.equals("#") == true)
  {
    fill(0);
    text('#',385,495);
  }
  else if(num.equals("D") == true)
  {
    fill(0);
    text('D',452,495);
  }
}
//This is the place where the data is comming from the arduino and getting stored in num and then an array is formed using a[i]
void serialEvent (Serial port)
{
  d++;
  num = port.readStringUntil('.');
  num = num.substring(0, num.length() - 1);
  if(i!=4)
  {
    a[i]=num;
    i++;
  }
  delay(100);          
  num = "";             
} 