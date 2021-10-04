//Programmer: Makiese Light Sita
//Program: Bird Soaring Adventure Game
//Started: Sunday, September 30 2021


PImage[] gif;
int birdBody;
int wingsFlop;
int enemydash;
int numbframes;
int f;
int movement;
int bckY;
//  Program: BirdFlopper
//Programmer: Makiese Light Sita
//Started: Wednesday, September 30 2021

void setup(){
size(1200, 880);

numbframes = 8;
 gif = new PImage[numbframes];
 
  int i = 0;
   while(i < numbframes){
 gif[i] = loadImage("frame_" + i +"_delay-0.06s.gif");
  i = i+1;
   }
}

void draw(){
background(0);
setEnemy1();
setEnemy2();
setbirdBody();


//fill(0, 0);
//rect(0, 0, mouseX, height);
}

void setbirdBody(){
  image(gif[f], 230, 80+wingsFlop, 300, 300);
  
  
  println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == numbframes) f = 0;
fill(0, 0);
rect(0, 0, width, height);
/*ellipse(230, 80+wingsFlop, 180, 100);
ellipse(150, 150+wingsFlop, 150, 100);
ellipse(100, 160+wingsFlop,200, 100);*/

fill(255, 0, 0, 22);

if (wingsFlop == width){
wingsFlop = 0;
}
if(keyPressed){
 
  wingsFlop = wingsFlop - 12;

}

if(!keyPressed){
  
 wingsFlop = wingsFlop + 25;

}

}

void setEnemy1(){
ellipse(1200 + enemydash, 180, 180, 100);
  
enemydash = enemydash - 22;

if(enemydash < -width){

  enemydash = 0;

}

}

void setEnemy2(){
ellipse(1200 + enemydash, 700, 180, 100);
  
enemydash = enemydash - 32;

}
