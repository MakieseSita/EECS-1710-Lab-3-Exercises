import processing.sound.*;
SoundFile file1;
//SoundFile file2;
String[] song ={"StarShip Galaxy Boss Battle by Light Sita.wav", "STARSHIP GALAXY Main Menu by Light Sita.wav"};    //Sets up Starship Galaxy Boss music composed and arranged entirely by me.

//Programmer: Makiese Light Sita
//Program: StarshipShooter Game
//Started: Wednesday, October 20 2021
//Completed: Friday, October 29 2021
int shotDirectionY;
int shotY = 700;
int bulletsizeX = 20;
int bulletsizeY = 20;
PImage goldbulletimage;
PImage PLAYER1;
PImage PLAYER1GLOWMODE;
PImage PLAYER1DAMAGEEFFECT;
int opacity = 100;
int player1Y = -100;
int player1sizeX = 200;
int player1sizeY = 200;
int playerHealthCount = 100;

int player1GlowY = 600;

PImage DARKMATTERERBOSS;
PImage DARKMATTERERBOSSDAMAGE;
int enemyX = 500;
int enemyY = 5;
int enemysizeX = 400;
int enemysizeY = 400;
int enemybluecolor = 255;
int BOSShealthbarCount = 8800;
PImage darkMatterBall;
int missileX = 900;
int missileY = 10;
int missilesizeX = 100;
int missilesizeY = 100;
int missileMovement;

int missile2X = 700;
int missile2Y = 10;
int missile2sizeX = 100;
int missile2sizeY = 100;
int missile2Movement;

int missile3X = 600;
int missile3Y = 10;
int missile3sizeX = 100;
int missile3sizeY = 100;
int missile3Movement;

int missile4X = 430;
int missile4Y = 10;
int missile4sizeX = 100;
int missile4sizeY = 100;
int missile4Movement;

int missile5X = 230;
int missile5Y = 10;
int missile5sizeX = 100;
int missile5sizeY = 100;
int missile5Movement;

int missile6X = 190;
int missile6Y = 10;
int missile6sizeX = 100;
int missile6sizeY = 100;
int missile6Movement;


PImage spaceBackground;
int spaceX = 0;
int spaceY = -990;
int spacemovement;


float gravity = 0.4;
float gravityDelta = 0.01;
float friction = 0.99;
float floor;

Player1 starship;
//GLOWMODE starshipglowmode;

void setup(){
size(1200, 800);

floor = height;
  
  starship = new Player1(width/2, height - 100);
  PLAYER1 = loadImage("STARSHIP PLAYER-1 by Light Sita (Finished Reoptimised Pixel Image).png"); //PLAYER-1 StarShip entirely pixel painted by me, Makiese Light Sita. 
  PLAYER1GLOWMODE = loadImage("STARSHIP PLAYER-1 GLOW MODE by Light Sita (Finished Reoptimised Pixel Image).png"); //PLAYER-1 StarShip GLOW MODE entirely pixel painted by me, Makiese Light Sita.
  PLAYER1DAMAGEEFFECT = loadImage("STARSHIP PLAYER-1 DAMAGE EFFECT by Light Sita(Complete Pixel Painting).png"); //PLAYER-1 StarShip damage effect entirely pixel painted by me, Makiese Light Sita.
goldbulletimage = loadImage("Golden_GlowingBullet_byLight Sita(Finished_Reoptimised_Pixel_Painting_Image).png"); //PLAYER-1 StarShip golden bullet entirely pixel painted by me, Makiese Light Sita.
DARKMATTERERBOSS = loadImage("STARSHIP ENEMY-BOSS NEO-DARKMATTERER SHIP by Light Sita (Finished Reoptimsed Pixel Image).png");//NEO-DARKMATTERER BOSS entirely pixel painted by me, Makiese Light Sita.
DARKMATTERERBOSSDAMAGE = loadImage("STARSHIP ENEMY-BOSS NEO-DARKMATTERER DAMAGE EFFECT  by Light Sita (Finished Reoptimsed Pixel Image).png");//NEO-DARKMATTERER BOSS damage effect entirely pixel painted by me, Makiese Light Sita.
darkMatterBall = loadImage("STARSHIP ENEMY-BOSS DARK MATTER ATTACK by Light Sita (Finished Reoptimised Pixel Image).png");//NEO-DARKMATTERER BOSS Dark Matter Attack entirely pixel painted by me, Makiese Light Sita.
spaceBackground = loadImage("Pixel_spaceBackgroundTest2_Resized.png");//Space Background found on the internet, belongs to https://www.deviantart.com/m-everham/art/Pixel-Space-BG-311101538. Resized using EZGIF.com.

//https://stackoverflow.com/questions/11822144/processing-how-to-add-background-music
   file1 = new SoundFile(this, song[0]);
  file1.play();                                   //Plays and loops Starship Galaxy Boss music composed and arranged entirely by me.
  file1.loop();
 
  /*if (playerHealthCount <= 0){ 
   file1.stop();
    file2.play();
  file2.loop();
  /*file1 = new SoundFile(this, song[1]);
  file1.play();
  file1.loop();
}

else{
  file2.stop();
  file1 = new SoundFile(this, song[0]);
  file1.play();
  file1.loop();}*/
 
}


void draw(){
  background(223);
  /*rect(0, 0, width, height);
  fill(color(255, 100));*/
  setSpaceBackground();
 // rect(0, 0, width, height);
  //fill(255, 100);
   //setSpaceBackground();
   //setEnemyBossDamageEffect();
   setEnemyBoss();
   //setEnemyBossDamageEffect();
   //setMissiles();
   starship.run();
   //starshipGlowMode.run();
    setMissiles();
    setMissiles2();
    setMissiles3();                    //Sets up and deploys NEO-DARKMATTERER'S dark matter missiles.
    setMissiles4();
    setMissiles5();
    setMissiles6();
   fill(color(255, 0, 255));
textSize(34);
text("BOSS HEALTHBAR: ", 13, 60);
  fill(color(255, 0, 255));
textSize(34);
text(BOSShealthbarCount, 320, 60);

   fill(color(255, 0, 255));
textSize(34);
text("PLAYER1 HEALTHBAR: ", 1, 700);
 fill(color(255, 0, 255));
textSize(34);
text(playerHealthCount, 370, 700);

if (BOSShealthbarCount <= 0){
   /*missileMovement = missileMovement + 0;
   missile2Movement = missile2Movement + 0;
   missile3Movement = missile3Movement + 0;
   missile4Movement = missile4Movement + 0;
   missile5Movement = missile5Movement + 0;
   missile6Movement = missile6Movement + 0;*/
    fill(color(0, 255, 255));
textSize(134);
text("YOU WIN!!! ", 203, 400);
missileMovement = -30;
missile2Movement = -30;
missile3Movement =-30;
missile4Movement = -30;                //Stops dropping dark matter ball attacks.
missile5Movement = -30;
missile6Movement = -30;
/*spacemovement = 0;
spaceX = 0; 
spaceY = 0;*/
playerHealthCount = 0;
BOSShealthbarCount = 8800;
/*file1.stop();
file2 = new SoundFile(this, "STARSHIP GALAXY Main Menu by Light Sita.wav");
  file2.play();
  //file1.loop();*/
}
  //fill(255, 0, 0);
   //rect(0, 0, width, height);
   //fill(255, 60);
  //fill(color(0, 0, 0));
 //ellipse(pmouseX, 700, 200, 200); 
//fill(255, 60);
//setEnemy();

}

void setMissiles(){
 fill(255, 0, enemybluecolor);
image(darkMatterBall, missileX, missileY + missileMovement, missilesizeX, missilesizeY);

missileMovement = missileMovement + 19;

if(missileMovement > height + 6){

  missileMovement = 0; // Loops space background movement.
  //missileX = missileX + 47;
}


if ((missileX > pmouseX && missileX < pmouseX + player1sizeX && (missileY + missileMovement) > player1GlowY && (missileY + missileMovement) < player1GlowY + player1sizeY)){
    fill(255, 0, 0, 90);                          //<--
  rect(600, 400, 1200, 800);                    //<--
  playerHealthCount = playerHealthCount - 1;         //Sets up damage effect for Player 1, telling the player that they have been damaged by the enemy's dark mattwer attacks.
  setPlayer1DamageEffect();                      //<--
 }
 
 if (playerHealthCount <= 0){

    fill(color(0, 255, 255));
textSize(134);
text("GAME OVER!!! ", 203, 400);
/*spacemovement = 0;
spaceX = 0; 
spaceY = 0;*/
playerHealthCount = 0;
BOSShealthbarCount = 8800;
 }

}
 
void setMissiles2(){
 fill(255, 0, enemybluecolor);
image(darkMatterBall, missile2X, missile2Y + missile2Movement, missile2sizeX, missile2sizeY);

missile2Movement = missile2Movement + 6;

if(missile2Movement > height + 6){

  missile2Movement = 0; // Loops space background movement.
  //missile2X = missile2X - 47;
}

if ((missile2X > pmouseX && missile2X < pmouseX + player1sizeX && (missile2Y + missile2Movement) > player1GlowY && (missile2Y + missile2Movement) < player1GlowY + player1sizeY)){
    fill(255, 0, 0, 90);                          //<--
  rect(600, 400, 1200, 800);                    //<--
  playerHealthCount = playerHealthCount - 1;         //Sets up damage effect for Player 1, telling the player that they have been damaged by the enemy's dark mattwer attacks.
  setPlayer1DamageEffect();                      //<--
 }
 
 if (playerHealthCount <= 0){

    fill(color(0, 255, 255));
textSize(134);
text("GAME OVER!!! ", 203, 400);
/*spacemovement = 0;
spaceX = 0; 
spaceY = 0;*/
playerHealthCount = 0;
BOSShealthbarCount = 8800;
 }
}

void setMissiles3(){
 fill(255, 0, enemybluecolor);
image(darkMatterBall, missile3X, missile3Y + missile3Movement, missile3sizeX, missile3sizeY);

missile3Movement = missile3Movement + 24;

if(missile3Movement > height + 6){

  missile3Movement = 0; // Loops space background movement.
  //missile2X = missile2X - 47;
}

if ((missile3X > pmouseX && missile3X < pmouseX + player1sizeX && (missile3Y + missile3Movement) > player1GlowY && (missile3Y + missile3Movement) < player1GlowY + player1sizeY)){
  fill(255, 0, 0, 90);                          //<--
  rect(600, 400, 1200, 800);                    //<--
  playerHealthCount = playerHealthCount - 1;         //Sets up damage effect for Player 1, telling the player that they have been damaged by the enemy's dark mattwer attacks.
  setPlayer1DamageEffect();                      //<--
 }
 
 if (playerHealthCount <= 0){

    fill(color(0, 255, 255));
textSize(134);
text("GAME OVER!!! ", 203, 400);
spacemovement = 0;
/*spacemovement = 0;
spaceX = 0; 
spaceY = 0;*/
playerHealthCount = 0;
BOSShealthbarCount = 8800;
 }
}

void setMissiles4(){
 fill(255, 0, enemybluecolor);
image(darkMatterBall, missile4X, missile4Y + missile4Movement, missile4sizeX, missile4sizeY);

missile4Movement = missile4Movement + 34;

if(missile4Movement > height + 6){

  missile4Movement = 0; // Loops space background movement.
  //missile2X = missile2X - 47;
}

if ((missile4X > pmouseX && missile4X < pmouseX + player1sizeX && (missile4Y + missile4Movement) > player1GlowY && (missile4Y + missile4Movement) < player1GlowY + player1sizeY)){
    fill(255, 0, 0, 90);                          //<--
  rect(600, 400, 1200, 800);                    //<--
  playerHealthCount = playerHealthCount - 1;         //Sets up damage effect for Player 1, telling the player that they have been damaged by the enemy's dark mattwer attacks.
  setPlayer1DamageEffect();                      //<--
 }
 
 if (playerHealthCount <= 0){

    fill(color(0, 255, 255));
textSize(134);
text("GAME OVER!!! ", 203, 400);
/*spacemovement = 0;
spaceX = 0; 
spaceY = 0;*/
playerHealthCount = 0;
BOSShealthbarCount = 8800;
 }
}

void setMissiles5(){
 fill(255, 0, enemybluecolor);
image(darkMatterBall, missile4X, missile4Y + missile4Movement, missile4sizeX, missile4sizeY);

missile5Movement = missile5Movement + 24;

if(missile5Movement > height + 6){

  missile5Movement = 0; // Loops space background movement.
  //missile2X = missile2X - 47;
}

if ((missile5X > pmouseX && missile5X < pmouseX + player1sizeX && (missile5Y + missile5Movement) > player1GlowY && (missile5Y + missile5Movement) < player1GlowY + player1sizeY)){
    fill(255, 0, 0, 90);                          //<--
  rect(600, 400, 1200, 800);                    //<--
  playerHealthCount = playerHealthCount - 1;         //Sets up damage effect for Player 1, telling the player that they have been damaged by the enemy's dark mattwer attacks.
  setPlayer1DamageEffect();                      //<--
 }
 
 if (playerHealthCount <= 0){

    fill(color(0, 255, 255));
textSize(134);
text("GAME OVER!!! ", 203, 400);
/*spacemovement = 0;
spaceX = 0; 
spaceY = 0;*/
playerHealthCount = 0;
BOSShealthbarCount = 8800;
 }
}

void setMissiles6(){
 fill(255, 0, enemybluecolor);
image(darkMatterBall, missile6X, missile6Y + missile6Movement, missile6sizeX, missile6sizeY);

missile6Movement = missile6Movement + 10;

if(missile6Movement > height + 6){

  missile6Movement = 0; // Loops space background movement.
  //missile2X = missile2X - 47;
}

if ((missile6X > pmouseX && missile6X < pmouseX + player1sizeX && (missile6Y + missile6Movement) > player1GlowY && (missile6Y + missile6Movement) < player1GlowY + player1sizeY)){
    fill(255, 0, 0, 90);                          //<--
  rect(600, 400, 1200, 800);                    //<--
  playerHealthCount = playerHealthCount - 1;         //Sets up damage effect for Player 1, telling the player that they have been damaged by the enemy's dark mattwer attacks.
  setPlayer1DamageEffect();                      //<--
 }
 
 if (playerHealthCount <= 0){

    fill(color(0, 255, 255));
textSize(134);
text("GAME OVER!!! ", 203, 400);
/*spacemovement = 0;
spaceX = 0; 
spaceY = 0;*/
playerHealthCount = 0;
BOSShealthbarCount = 8800;
 }
}
