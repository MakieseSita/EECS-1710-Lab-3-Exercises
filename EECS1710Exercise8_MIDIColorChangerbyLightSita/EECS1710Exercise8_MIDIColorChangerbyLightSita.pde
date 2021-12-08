//Programmer: Makiese Light Sita
//Program: Midi Color Changer
//Started: Tuesday, December 7 2021
//Finished: Tuesday, December 7 2021
import themidibus.*;
PImage MUSICNOTESIMAGE;

MidiBus myBus;
int channel = 0;
int pitch = 51; 
int velocity = 127;
/*int channel = 64;
int pitch, velocity;*/
//ArrayList<Dot> dots;

void setup() {
  size(640, 480, P2D);

  MidiBus.list();
  myBus = new MidiBus(this, -1, 2); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  MUSICNOTESIMAGE = loadImage("Piano-Notes.jpeg"); //Image taken from https://cdn.merriammusic.com/2020/04/Piano-Notes.jpeg
}

void draw() {
  background(0);
  image(MUSICNOTESIMAGE, 0, 0, width, height);
  stroke(3);
  ellipse(width/2, height/2, 200, 200);
  fill(255, 255, 255);
  //if (keyPressed && key == 'z'){fill(245, 234, 0);}
 /*int channel = 0;
int pitch = 6; 
int velocity = 127;*/


myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
delay(500);
myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
  
 keyPressed();
/*if (mousePressed) {
  pitch = pitch + 1;
  
  //keyPressed();
}*/
/*void mousePressed() {
  pitch = int(map(mouseY, height, 0, 0, 127));
  velocity = int(map(mouseX, 0, width, 0, 127));
  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  
  dots.add(new Dot(mouseX, mouseY, velocity + 10));
}

void mouseReleased() {
  myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
}*/
}

void keyPressed(){
  //Controls specific pitch ranges of the MIDI notes.
 //if (keyPressed){ 
   
 if (key == 'z'){pitch = 53; fill(245, 234, 0);/*Turns the circle yellow*/}

if (key == 'x'){pitch = 55; fill(145, 14, 234); /*Turns the circle purple*/}

if (key == 'c'){pitch = 57; fill(0, 234, 234);/*Turns the circle light blue*/}

if (key == 'v'){pitch = 59; fill(0, 255, 0);/*Turns the circle green*/}
 //}
}
