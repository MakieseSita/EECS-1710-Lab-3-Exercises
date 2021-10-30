void keyPressed(){
if (key == ' '){
  //fill(color(0, 255, 0));
//setBullet();
if (BOSShealthbarCount > 0 && playerHealthCount > 0){
starship.fire();
setGLOWMODE();    /// Sets off the engine glow effect that indicates that the player is shooting from the grey and yellow starship they control.
 }
}

/*if (key == 'A'){
  //fill(color(0, 255, 0));
//setBullet();
starship.fire();
}*/

/*if(shotDirectionY < - enemysizeX + enemysizeY){

  shotDirectionY = 0; // Returns the golden bullet to it's original position.

}*/
/*if (!keyPressed){
 //if (shotY + shotDirectionY  > -height){shotY = 700; shotDirectionY = 0;}
 shotY = 700;
  } 
 }*/
}
