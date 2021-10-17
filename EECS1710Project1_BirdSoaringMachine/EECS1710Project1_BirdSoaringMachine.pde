 //Programmer: Makiese Light Sita
//Program: Bird Soaring Adventure Game
//Started: Thursday, September 30 2021
//Completed: Sunday, October 17 2021

PImage[] orangeBird_gif;
int birdBody;
int birdX;
int birdY = 80;
int birdwidth = 200;
int birdheight = 200;
int wingsFlop;

PImage[] eaglebird_gif;
int enemyX = 1200;
int enemyY = -25;
int enemydash;
int enemywidth = 300;
int enemyheight = 300;
int enemydash2;
int enemywidth2 = 300;
int enemyheight2 = 300;
int orangebird_numbframes;
int eaglenumbframes;
int f;
int f2;
int ea;
int movement;
int bckY;
int gameState;

PImage foggyforest;
int forestmovement;
PImage GAMEOVERSCREEN;
int GAMEOVER_X    ;
int GAMEOVER_Y;
//  Program: BirdFlopper
//Programmer: Makiese Light Sita
//Started: Wednesday, September 30 2021

void setup(){
size(1200, 400);
foggyforest = loadImage("Fog in the Forest(Unsigned Finished Forest background by Light Sita).png"); //Background illustrated entirely by me, Makiese Light Sita
GAMEOVERSCREEN = loadImage("GAME OVER Title Screen by Light Sita (Signatureless Widescreen Pixel Render).png"); //Pixel Art Screen entirely done by me, Makiese Light Sita 
orangebird_numbframes = 6;
 orangeBird_gif = new PImage[orangebird_numbframes];
 
  int i = 0;
   while(i < orangebird_numbframes){
 orangeBird_gif[i] = loadImage("frame_" + i +"_delay-0.07s.gif"); //Orange bird entirely pixel painted and animated by me, Makiese Light Sita
  i = i+1;
   }
   
   eaglenumbframes = 5;
 eaglebird_gif = new PImage[eaglenumbframes];
 
  int ea = 0;
   while(ea < eaglenumbframes){
 eaglebird_gif[ea] = loadImage("Eagleframe_" + ea +"_delay-0.05s.gif"); //Eagle imported from "https://i.imgur.com/YkOGs6h.gif"
  ea = ea+1;
   }
}

void draw(){
background(0);
setfoggyforest();
setbirdBody();
setEnemy1();
setEnemy2();
//setbirdBody();

if (dist(birdX, birdY+wingsFlop, birdwidth, birdheight) > enemywidth + enemyheight) //When the bird falls to a bottomless pit to his death or goes out of bounds. GAME OVER!!!
/*if (birdwidth >= enemywidth || birdwidth >= enemyheight)*/{
  fill(255,0,0,60);
  rect(0,0,width, height);
  forestmovement = 0;
  setGameOverTitleScreen(); //Game over screen pops up, telling the player that the orange bird has died, and needs to be revived by holding a key and a mouse button.
  
  //birdY=- 12;
  //birdY =+ 12;            //Prototype codes.
  
 
   if (mousePressed){wingsFlop = wingsFlop - 12;} //Hold key & mouse button to reload
  if (!mousePressed){birdY = 0;}
}

if (dist(birdX, birdY+wingsFlop, birdwidth, birdheight) <= enemywidth + enemyheight) //When the bird gets fully revived. GAME ON!!!
/*if (birdwidth >= enemywidth || birdwidth >= enemyheight)*/{
  fill(255,0,0,0);
  rect(0,0,width, height);
  forestmovement = forestmovement + 0 ;
  
  //birdY=- 12;
  //birdY =+ 12;
  
  /* if (mousePressed){wingsFlop = wingsFlop - 12;}
  if (!mousePressed){birdY = 0;}*/                              //Prototype codes.
}

if (enemyX < birdX){fill(255,0,0,23);
  rect(0,0,width, height);}  
  
 /*if(birdwidth < enemydash){
    fill(255, 0, 0);                                  //Prototype codes.
  }*/
  else{
   fill(0); 
  }
//fill(0, 0);
//rect(0, 0, mouseX, height);                //Prototype codes.
}

void setbirdBody(){
  image(orangeBird_gif[f], birdX, birdY+wingsFlop, birdwidth, birdheight); //Orange Bird gets imported into the game screen.
  
  
  println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == orangebird_numbframes) f = 0;
fill(0, 0);
rect(0, 0, width, height);

/*ellipse(230, 80+wingsFlop, 180, 100);
ellipse(150, 150+wingsFlop, 150, 100);                       //Prototype codes.
ellipse(100, 160+wingsFlop,200, 100);*/                            



fill(255, 0, 0, 22);

if (wingsFlop == width){
wingsFlop = 0;
}
if(keyPressed){
  
  wingsFlop = wingsFlop - 12;     //Bird flops its wings upwards.
  
 /* if (birdY < 0  || birdY > height) {
    wingsFlop    += -12;                                //Prototype codes.
  }*/
}

if(!keyPressed){
  
 wingsFlop = wingsFlop + 25;          //Orange Bird falls. Essentially acts as the orange bird's personal gravitational pull.

}

  /*if (birdX < 0 || birdX > width) {
    birdX *= -1;                                     //Prototype codes.
  }*/

  /*if (birdY < 0  || birdY > height) {
    wingsFlop    += -12;                                //Prototype codes.
  }*/
  

}

void setEnemy1(){
//ellipse(1200 + enemydash, 180, 180, 100);
  
    image(eaglebird_gif[f2], enemyX + enemydash, enemyY, enemywidth, enemyheight); //Eagle Bird #1 gets imported into the game screen.
  
  
  println(frameCount);
  if (frameCount % 3 == 0) f2 = f2 + 1;
  if (f2 == eaglenumbframes) f2 = 0;
fill(0, 0);
rect(0, 0, width, height);
/*ellipse(230, 80+wingsFlop, 180, 100);
ellipse(150, 150+wingsFlop, 150, 100);                    //Prototype codes.
ellipse(100, 160+wingsFlop,200, 100);*/

fill(255, 0, 0, 22);

enemydash = enemydash - 12; //Eagle Bird #1 flys towards the orange bird. It's faster than eagle bird #2.

if(enemydash < -width-800){

  enemydash = 10;  // The second eagle respawns to it's original spot on the right, simulating multiple eagles coming in towards the orange bird's direction.

}

}

void setEnemy2(){
//ellipse(1200 + (enemydash - 522), 700, 180, 100);                //Prototype codes.
  
   image(eaglebird_gif[f2], 1200 + enemydash2, 200, enemywidth2, enemyheight2); //Eagle Bird #2 gets imported into the game screen.
  
  
  println(frameCount);
  if (frameCount % 3 == 0) f2 = f2 + 1;
  if (f2 == eaglenumbframes) f2 = 0;
fill(0, 0);
rect(0, 0, width, height);

enemydash2 = enemydash2 - 8; //Eagle Bird #2 flys towards the orange bird. It's slower than eagle bird #1.

if(enemydash2 < -width-800){

  enemydash2 = 10; // The second eagle respawns to it's original spot on the right, simulating multiple eagles coming in towards the orange bird's direction.

}
}

void setfoggyforest()
{
image(foggyforest, forestmovement, bckY + 10);
image(foggyforest, forestmovement + foggyforest.width, bckY + 10);           //Simulation of forest background movement.

forestmovement = forestmovement - 26;

if(forestmovement < -foggyforest.width){

  forestmovement = 0; // Sets up forest background animation loop. 

}
/*if (forestmovement == width){
forestmovement = 0;                                            //Prototype codes.
}

  
forestmovement = forestmovement - 35;                          //Prototype codes.


  
  if (!keyPressed){
  forestmovement = +forestmovement - 35;
    //movement = 0;                                                        //Prototype codes.
  
  }*/
}

void setGameOverTitleScreen(){
  //rect(0, 0, 400, 400);                                      //Prototype codes.
image(GAMEOVERSCREEN, GAMEOVER_X + 300, GAMEOVER_Y - 23, 630, 450); //Game over screen pops up, telling the player that the orange bird has died, and needs to be revived by holding a key and a mouse button.
  


}
