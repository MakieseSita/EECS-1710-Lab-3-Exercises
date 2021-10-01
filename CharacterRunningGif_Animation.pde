//Programmer: Makiese Light Sita
//Program: Character running loop animation
//Started: Sunday, September 26 2021
//Completed: Thursday, September 30 2021
PImage[] gif;
int numbframes;
int f;
int movement;
int bckY;
  PImage GreenHillPlatform;
  PImage oceanBackground;
  //img = loadImage("1208528_wayneman_green-hill-zone.png");
void setup(){
size(1200, 800);
oceanBackground = loadImage("Green Hill ocean background trail V3(Signatureless)(Sonic Prime Zone Concept Art).png"); //Background illustrated entirely by me, Makiese Light Sita
GreenHillPlatform = loadImage("Green Hill Grassy ground platform Reoptimised(Sonic Prime Zone Concept Art).png");//Background illustrated entirely by me, Makiese Light Sita
//background(0, 0, 0, 0);

//background = loadImage("gHillframe_1_delay-0.06s.gif");
 numbframes = 8;
 gif = new PImage[numbframes];
 
 int i = 0;
 //int e = 0;
 
 while(i < numbframes){
   //gif[e] = loadImage("gHillframe_" + i +"_delay-0.06s.gif");
 gif[i] = loadImage("frame_" + i +"_delay-0.06s.gif"); //Sonic sprite Gif used in this program was taken from Giphy.com
 i = i+1;
 
 //position = position + 2;

 }
 
 
 
 /*gif[0] = loadImage("frame_0_delay-0.06s.gif");
 gif[1] = loadImage("frame_1_delay-0.06s.gif");
 gif[2] = loadImage("frame_2_delay-0.06s.gif");
 gif[3] = loadImage("frame_3_delay-0.06s.gif");
 gif[4] = loadImage("frame_4_delay-0.06s.gif");*/

}


void draw(){
 
  //layer1
  //setoceanBackground();
  
  
  //layer2
 background(0, 0);
 //image(img, movement, 0);
 //setBackground();
  //image(oceanBackground, movement, bckY);
 //image(oceanBackground, movement + img.width, bckY);
 setoceanBackground();
  setGreenHillZonePlatform();
 /*image(img, movement, bckY);
image(img, movement + img.width, bckY);

if(movement < -img.width){

  movement = 0;

}*/

   //image(gif[f], mouseX, 150, width, height);
   
  //layer2
  image(gif[f], mouseX, 130, 400, 400);
   println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == numbframes) f = 0;
fill(0, 0);
rect(0, 0, width, height);

fill(255, 0, 0, 22);

if (movement == width){
movement = 0;
}
if(keyPressed){
  
 movement = movement - 35;

  }
  
  if (!keyPressed){
  movement = +movement - 35;
    //movement = 0;
  
  }
}

void setGreenHillZonePlatform(){

image(GreenHillPlatform, movement, bckY);
image(GreenHillPlatform, movement + GreenHillPlatform.width, bckY);

if(movement < -GreenHillPlatform.width){

  movement = 0;

}


}

void setoceanBackground()
{
image(oceanBackground, movement, bckY);
image(oceanBackground, movement + oceanBackground.width, bckY);



}
