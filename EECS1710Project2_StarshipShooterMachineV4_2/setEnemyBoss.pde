void setEnemyBoss(){
  //fill(color(0, 0, 255));
 fill(255, 0, enemybluecolor, 60);
image(DARKMATTERERBOSS, enemyX, enemyY, enemysizeX, enemysizeY); //Sets up the boss that I(Makiese Light Sita) pixel painted, a. k. a, the NEO-DARKMATTERER.

if (bulletsizeX + bulletsizeY == (enemyX - 46) + (enemyY - 46)){
//fill(255, 0, 0, 60);
enemybluecolor = 0;
//enemyY = 0;
//enemysizeX = enemysizeX + 12;
  }
  else {enemybluecolor = 255;}
/*if (dist(pmouseX, shotY + shotDirectionY, bulletsizeX, bulletsizeY) > enemysizeX + enemysizeY && dist(pmouseX, shotY + shotDirectionY, bulletsizeX, bulletsizeY) < enemysizeX + enemysizeY){
  if ((shotY + shotDirectionY) >= enemyY){
  enemybluecolor = 0;
fill(255, 0, 0);

  }
  
 else {enemybluecolor = 255;}
}*/



}

void setEnemyBossDamageEffect(){
  //fill(color(0, 0, 255));
 //fill(255, 0, enemybluecolor);
image(DARKMATTERERBOSSDAMAGE, enemyX, enemyY, enemysizeX, enemysizeY);   //Sets up the damage effect for the boss that I(Makiese Light Sita) pixel painted, a. k. a, the NEO-DARKMATTERER.
/*if (bulletsizeX + bulletsizeY == (enemyX - 46) + (enemyY - 46)){
//fill(255, 0, 0, 60);
enemybluecolor = 0;
//enemyY = 0;
//enemysizeX = enemysizeX + 12;
  }
  else {enemybluecolor = 255;}*/
/*if (dist(pmouseX, shotY + shotDirectionY, bulletsizeX, bulletsizeY) > enemysizeX + enemysizeY && dist(pmouseX, shotY + shotDirectionY, bulletsizeX, bulletsizeY) < enemysizeX + enemysizeY){
  if ((shotY + shotDirectionY) >= enemyY){
  enemybluecolor = 0;
fill(255, 0, 0);

  }
  
 else {enemybluecolor = 255;}
}*/



}
