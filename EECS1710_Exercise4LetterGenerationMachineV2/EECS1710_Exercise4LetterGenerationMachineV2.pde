//Programmer: Makiese Light Sita
//Program: Letter Generation Machine
//Started: Tuesday, November 2 2021
//Completed: Sunday, November 7 2021

//Taken from Professor's week 08 example and modified as best as possible.
LetterGenerator lg;
String input = "abcdfg";
PImage space;
PGraphics pg;

// window sizes are ints
int scaler = 4;
// the scale command needs a float percentage
float scaler_f = 1.0 / scaler;

void setup() {
  size(1200, 600, P2D);
  
  lg = new LetterGenerator(input, 0, height/2);
  space = loadImage("Pixel Space Background.png");//Generates the pixel space background.
}

void draw() {
  background(127);
  image(space, 0, 0,1200, 600);//Stamps the pixel space background onto the background.
  lg.run(); 
}
