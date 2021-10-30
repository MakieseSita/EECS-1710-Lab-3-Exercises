class GoldBullet{
 PVector position;
  float rot;
  int timestamp;
  float velocity = 10;
  boolean alive = true;                        //Modified from Professor Nichols Artillery01 Code.
  int lifetime = 1000;
  
  GoldBullet(float x, float y, float _rot) {
    position = new PVector(pmouseX, y);
    rot = _rot;                                   //Modified from Professor Nichols Artillery01 Code.
    timestamp = millis();
  }
  
  void update() {
    // https://www.emanueleferonato.com/2007/04/28/create-a-flash-artillery-game-step-1/
    position.x += velocity * sin(radians(rot));                                                  //Modified from Professor Nichols Artillery01 Code.
    position.y -= velocity * cos(radians(rot));                                                 
    
    // set bullets past their lifetime as not alive so they can be removed
    if (alive && millis() > timestamp + lifetime){alive = false;}
  }
  
void draw(){
//fill(color(0, 255, 0));
image(goldbulletimage, position.x + 80, position.y, bulletsizeX, bulletsizeY);

if ((position.x + 80 > enemyX) && (position.x + 80 < enemyX + enemysizeX) && (position.y > enemyY) && (position.y < enemyY + enemysizeY)){
//fill(255, 0, 0, 60);
enemybluecolor = 0;
BOSShealthbarCount = BOSShealthbarCount - 1;
setEnemyBossDamageEffect();
//enemyY = 0;
//enemysizeX = enemysizeX + 12;
  }
  else {enemybluecolor = 255;}
/*if ((position.y) >= enemysizeY && (position.y) <= enemysizeY && (position.x) >= enemysizeX && (position.x) <= enemysizeX ){
fill(255, 0, 0, 60);
enemybluecolor = 0;
opacity = 20;
//enemyY = 0;
//enemysizeX = enemysizeX + 12;
  }
  else {enemybluecolor = 255;}*/
 
//image(goldbulletimage, pmouseX, shotY + shotDirectionY + goldbulletimage.height , 50, 50);
//fill(color(0, 255, 0));
//shot
/*shotDirectionY = shotDirectionY - 24;

 //if ((pmouseX) >= enemysizeX - 2){
  if ((shotY + shotDirectionY) >= enemysizeY - 2 && (shotY + shotDirectionY) >= enemysizeX - 2){
fill(255, 0, 0, 60);
enemybluecolor = 0;
//enemyY = 0;
//enemysizeX = enemysizeX + 12;
  }
  else {enemybluecolor = 255;}
 }*/
//}
}

void run() {
    update();
    draw();    //Modified from Professor Nichols Artillery01 Code.
  
  }
 }
