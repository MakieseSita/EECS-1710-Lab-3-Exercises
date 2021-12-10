//Programmer: Makiese Light Sita
//Program: Midi Instrument Player
//Started: Saturday, December 4 2021
//Finished: Friday, December 10 2021
import themidibus.*;
PImage NeonCity;

MidiBus myBus;
int channel = 0;
int pitch = 26; 
int velocity = 1277;
/*int channel = 64;
int pitch, velocity;*/
//ArrayList<Dot> dots;

void setup() {
  size(940, 480, P2D);
 //NeonCity = loadImage("Pixel Neon-City Image.jpeg");
  MidiBus.list();
  myBus = new MidiBus(this, -1, 2); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  NeonCity = loadImage("Pixel Neon-City Image.jpg"); // Taken from https://www.pinterest.ca/pin/25614291618818441/
}

void draw() {
  background(245);
  image(NeonCity, 0, 0, width, height);
  noStroke();
   KeyboardTemplate2();
  KeyboardTemplate2();
  KeyboardTemplate();
  KeyboardTemplate();
  //KeyboardTemplate2();
  //KeyboardTemplate2();
  //pianoKey0Minor();
  pianoKey1();
  pianoKey1();
  pianoKey1Minor();
  pianoKey1Minor();
  pianoKey2();
  pianoKey2();
  pianoKey2();
  pianoKey2Minor();
  pianoKey2Minor();
  pianoKey3();
  pianoKey3();
  pianoKey3();
  //pianoKey3Minor();
  //pianoKey3Minor();
  pianoKey4();
  pianoKey4();
  pianoKey4();
  pianoKey3Minor();
  pianoKey3Minor();
  pianoKey5();
  pianoKey5();
  pianoKey5();
  pianoKey4Minor();
  pianoKey4Minor();
  pianoKey6();
  pianoKey6();
  pianoKey6();
  pianoKey5Minor();
  pianoKey5Minor();
  pianoKey7();
  pianoKey7();
  pianoKey7();
  //pianoKey7Minor();
  //pianoKey7Minor();
  pianoKey8();
  pianoKey8();
  pianoKey8();
  //pianoKey8Minor();
  //pianoKey8Minor();
  pianoKey9();
  pianoKey9();
  pianoKey6Minor();
  pianoKey6Minor();
  pianoKey6Minor();
  pianoKey10();
  pianoKey10();
  pianoKey7Minor();
  pianoKey7Minor();
  pianoKey7Minor();
  
  pianoKey11();
  pianoKey11();
  pianoKey8Minor();
  pianoKey8Minor();
  pianoKey8Minor();
  pianoKey12();
  pianoKey12();
  pianoKey9Minor();
  pianoKey9Minor();
  pianoKey9Minor();
  pianoKey13();
  pianoKey13();
  pianoKey10Minor();
  pianoKey10Minor();
  pianoKey10Minor();
  pianoKey14();
  pianoKey14();
  //pianoKey11Minor();
  //pianoKey11Minor();
  //pianoKey11Minor();
  pianoKey15();
  pianoKey15();
  pianoKey11Minor();
  pianoKey11Minor();
  pianoKey11Minor();
  pianoKey16();
  pianoKey16();
  pianoKey12Minor();
  pianoKey12Minor();
  pianoKey12Minor();
  pianoKey17();
  pianoKey17();
  //pianoKey13Minor();
  //pianoKey13Minor();
  //pianoKey13Minor();
  pianoKey18();
  pianoKey18();
  //pianoKey13Minor();
  //pianoKey13Minor();
  //pianoKey13Minor();
  pianoKey19();
  pianoKey19();
  pianoKey13Minor();
  pianoKey13Minor();
  pianoKey13Minor();
  pianoKey20();
  pianoKey20();
  pianoKey14Minor();
  pianoKey14Minor();
  pianoKey14Minor();
  pianoKey21();
  pianoKey21();
  pianoKey15Minor();
  pianoKey15Minor();
  pianoKey15Minor();
  pianoKey22();
  pianoKey22();
  /*pianoKey19Minor();
  pianoKey19Minor();
  pianoKey19Minor();*/
  
 /*int channel = 0;
int pitch = 6; 
int velocity = 127;*/

if (keyPressed){
myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
delay(100);
//myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
} 

if (mousePressed) {
  //pitch = pitch + 1;
  
  keyPressed();
  
}
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
 if (keyPressed){ 
   
 if (key == 'z'){pitch = 50;}
 if (key == 's'){pitch = 51;}
 if (key == 'x'){pitch = 52;}
 if (key == 'd'){pitch = 53;}
 if (key == 'c'){pitch = 54;}
 if (key == 'v'){pitch = 55;}
 if (key == 'g'){pitch = 56;}
 if (key == 'b'){pitch = 57;}
 if (key == 'h'){pitch = 58;}
 if (key == 'n'){pitch = 59;}
 if (key == 'j'){pitch = 60;}
 if (key == 'm'){pitch = 61;}
 if (key == ','){pitch = 62;}
 if (key == 'l'){pitch = 63;}
 if (key == '.'){pitch = 64;}
 
 if (key == ';'){pitch = 65;}
 if (key == '/'){pitch = 66;}
 if (key == 'q'){pitch = 67;}
 /*if (key == 'a'){pitch = 71;}*/
 //if (key == 's'){pitch = 73;}
 //if (key == 'd'){pitch = 75;}
 /*if (key == 'f'){pitch = 77;}
 if (key == 'g'){pitch = 79;}
 if (key == 'h'){pitch = 81;}
 if (key == 'j'){pitch = 83;}
 if (key == 'k'){pitch = 85;}
 if (key == 'l'){pitch = 87;}*/
 
 //if (key == ';'){pitch = 66;}
 //if (key == 'q'){pitch = 93;}
 if (key == '2'){pitch = 68;}
 if (key == 'w'){pitch = 69;}
 if (key == '3'){pitch = 70;}
 if (key == 'e'){pitch = 71;}
 if (key == '4'){pitch = 72;}
 if (key == 'r'){pitch = 73;}
 if (key == 't'){pitch = 74;}
 if (key == '6'){pitch = 75;}
 if (key == 'y'){pitch = 76;}
 if (key == '7'){pitch = 77;}
 if (key == 'u'){pitch = 78;}
 if (key == 'i'){pitch = 79;}
 if (key == '9'){pitch = 80;}
 if (key == 'o'){pitch = 81;}
 if (key == '0'){pitch = 82;}
 if (key == 'p'){pitch = 83;}
 if (key == '-'){pitch = 84;}
 if (key == '['){pitch = 85;}
 if (key == ']'){pitch = 86;}
 }
}

void KeyboardTemplate(){rect(8, 10, 900, 107);
  fill(0, 0, 0);}
  void KeyboardTemplate2(){rect(4, 1, 910, 125);
  fill(155, 0, 205);}
