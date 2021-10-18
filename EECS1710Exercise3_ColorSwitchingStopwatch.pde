//Programmer: Makiese Light Sita
//Program: Color Switching Stopwatch 
//Started: Monday, October 11 2021

float rot1 = 0;
float rot2 = 0;
float rot3 = 0;
float lengthHand1 = 240;
float lengthHand2 = 215;
float lengthHand3 = 165;
int lastSecond = 0;
int lastMinute = 0;
int lastHour = 0;
int redcolor = 234;
 int s = second();
  int m = minute();
  int h = hour();
   PFont P;
   PImage neonCity;
   PImage[] gif;
   int cityFrames;
   int cityX;
   int cityY;
   int f;
   PImage Space_neoncityholder;
void setup() {
  size(800, 600); 
   Space_neoncityholder = loadImage("Pixel_space.jpg");
   gif = new PImage[cityFrames];
 //Space_neoncityholder = loadImage("Pixel_space.jpeg");
  /*int i = 0;
  cityFrames = 149; 
   while(i < cityFrames){
 gif[i] = loadImage("frame_0" + i +"_delay-0.03s.gif"); //Orange bird entirely pixel painted and animated by me, Makiese Light Sita
  i = i+1;
   }*/
  
  
  
}

void draw() {
  neoncityBackground();
       textAlign(CENTER);
  text("0",width/2,60);
    fill(color(redcolor,213,123));
    ellipse(width/2, height/2, 500, 500);
     fill(color(redcolor,13,123));
  ellipse(width/2, height/2, 450, 450);
  
    pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot1));
  line(0, 0, lengthHand1, 10);
  rect(lengthHand1, 0, 10,10);
  popMatrix();
  
  fill(color(redcolor,213,123));
    ellipse(width/2, height/2, 300, 300);
  //fill(234,21,23);
  /*if (lastSecond > 59){
   
    redcolor = redcolor+12;
    
  }*/
  
  /*pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot1));
  line(0, 0, lengthHand1, 10);
  rect(lengthHand1, 0, 10,10);
  popMatrix();*/
  
  /*pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot2));
  //rect(lengthHand2, 0, 10,10);
  line(0, 0, lengthHand2, 0);
  ellipse(lengthHand2, 0, 10,10);
  popMatrix();*/
  
  /* pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot3));
  //rect(lengthHand3, 0, 10,10);
  line(0, 0, lengthHand3, 0);
  ellipse(lengthHand3, 0, 10,10);
  popMatrix();*/
  
  int s = second();
  int m = minute();
  int h = hour();

  
  if (keyPressed){
   
   
  if (s != lastSecond) {
    rot1 += 6;
    lastSecond = s;
    
  }
  
  if (m != lastMinute) {
    rot2 += 6;  
    lastMinute = m;
  }
  
   if (h != lastHour) {
    rot3 += 6;  
    lastHour = h;
  }
  
  if (rot1 > 360){
   
    redcolor = redcolor/2; //turns the stopclock green
    
  }
  
  if (rot1 > 360*2){
   
    redcolor = redcolor - 12; //turns the stopclock green
    
  }
  }
  if (!keyPressed){rot1 = 0; redcolor = 234;}

  }
  
  
  void neoncityBackground(){
  
   image(Space_neoncityholder, cityX, cityY, 800, 600);
  
  
 /* println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == cityFrames) f = 0;*/
fill(0, 0);
rect(0, 0, width, height);
  
  
  
  }
