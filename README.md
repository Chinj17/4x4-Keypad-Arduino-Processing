# 4x4-Keypad-Arduino-Processing


In this Project you'll be able to free yourself from the hassles of using an LCD screen to display content from your Arduino and also make your projects look good with this amazing and free GUI software called Processing. By the end of this project you'll be able to interface different types of keypads with Arduino and be familiar with Processing.

What can you do with this?

  * Interface 4x4 keypad with arduino.
  * Create graphical interfaces of your choice

What you will learn from this?

  * Interfacing any keypad with Arduino
  * Processing software.
  * Communication between Processing and Arduino.

## Step 1: Parts Required
You'll require the following parts for this project:

  1. Arduino (any Arduino will do).
  2. Keypad (it can be 4x4 or 4x3. I have used a 4x4 keypad).
  3. Processing Software.
  4. Keypad library

Here are the links if you don't have the software. [Arduino IDE](https://www.arduino.cc/en/Main/Software), [Processing](https://processing.org/download/). Next, extract keypad.zip and move it to the libraries folder in Arduino. After doing that, you should be able to see some example sketches in the Arduino IDE.

## Step 2: Working

Now let's first understand how the keypad functions.

>The keypad works on the simple principle of a switch i.e the circuit is complete when the switch is pressed. We assign the row pins with a HIGH or VCC and the column pins with a LOW or GND. This can be done with the help of GPIO pins on Arduino. Then we keep checking the column pins for a change in input. Suppose we press 1 on the keypad, then according to the diagram it's located at r1,c1. Therefore if we give HIGH to row1 then the column1 will read a HIGH on the pin. This is how we will be able to find out which key is pressed. Since only row1 is given HIGH, we can be 100% sure that r1,c1 is pressed. This is how you can map all the keys. If you want further explanation or this wasn't enough, there are ample number of videos on Youtube which explain the working of a simple keypad. You can watch them if you want.

## Step 3: processing

So now lets start with the GUI part. For this we will use a software called Processing. I have provided the link in Step 1.
This is basically where we will visualize our output from the Arduino. Once you are familiar with Processing you can make your own keypad.
Now to explain the code. It's pretty much easy as the explanation for all the functions can be found on the Processing site. I have setup all the necessary libraries and in the *__void setup()__*. I have initialized the window, the text font and the serial port.
Fourth picture has the conditions for when we receive an input through the serial connection.

## Step 4: Connections, Arduino Code and explanation
To make the connections hold the keypad with the keys facing you. From the left it goes like this R0,R1,R2....

>R0 ----> pin 2
>
>R1-----> pin 3
>
>R2-----> pin 4
>
>R3-----> pin 5
>
>C0-----> pin 6
>
>C1-----> pin 7
>
>C2-----> pin 8
>
>C3-----> pin 9

Now let us look at the Arduino code. It's nothing out of the ordinary. As usual in *__void setup()__* you start the serial communication with 9600 as the baud rate. Then in *__void loop()__* I have used a variable to get and store the value from the keypad. This value I send through the serial port with a period after it so that it becomes easy to identify the end of the data in Processing. We do this so that the serial port does not keep searching for the end of the data. In Processing we use the statement buffer until it sees the full stop. In the following videos, I have given a detailed explanation of the process and showed the project in action.

>[In Action.](https://youtu.be/JiOzOpmkwqY) Video for the explanation of the code and the final output.

Well that's it. Extract all the files, make the connections and enjoy.

Thank you.
