class Player1{

PVector position;
  float rot = 0;                                 //Modified from Professor Nichols Artillery01 Code.
  float rotDelta = 2;
  ArrayList<GoldBullet> bullets;

//void setPlayer1(){}
  
  Player1(float x, float y) {
    position = new PVector(pmouseX, y);           //Modified from Professor Nichols Artillery01 Code.
    bullets = new ArrayList<GoldBullet>();                     
  }
  
  void update() {
    /*rot += rotDelta;    
    if (rot < -90 || rot > 90) rotDelta *= -1;*/  
    
    // remove all bullets that are no longer alive
    for (int i=bullets.size()-1; i>=0; i--) {
     GoldBullet bullet = bullets.get(i);
      if (bullet.alive) {
        bullet.run();                                //Modified from Professor Nichols Artillery01 Code.
      } else {
        bullets.remove(i);
      }
    }
  }

  void fire() {
    bullets.add(new GoldBullet(position.x, position.y, rot)); //Modified from Professor Nichols Artillery01 Code.
  }
 
  void draw(){
   pushMatrix(); 
    translate(position.x, position.y);
    //rotate(radians(rot));
    rectMode(CENTER);
//fill(255, 255, 255);
//tint(255, 100);
//image(PLAYER1GLOWMODE,pmouseX, player1Y, player1sizeX, player1sizeY);
//tint(255, 100);
 image(PLAYER1,pmouseX, player1Y, player1sizeX, player1sizeY);
 popMatrix();
 
 /*if (dist(pmouseX, player1Y, player1sizeX, player1sizeY) <= (missileX + missileY)){
//fill(255, 0, 0, 60);
//enemybluecolor = 0;
playerHealthCount = playerHealthCount - 1;
//enemyY = 0;
//enemysizeX = enemysizeX + 12;
  }
  else {enemybluecolor = 255;}*/
}

 void run() {
    update();
    draw();
  }
}
