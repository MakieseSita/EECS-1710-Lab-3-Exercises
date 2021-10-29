void setSpaceBackground(){
  //rect(0, 0, width, height);
image(spaceBackground, spaceX, spaceY + spacemovement);
image(spaceBackground, spaceX, spaceY + spacemovement + spaceBackground.height);
image(spaceBackground, spaceX, spaceY + spacemovement + spaceBackground.height*2);
//fill(255, 0);

spacemovement = spacemovement + 34;

if(spacemovement > spaceBackground.height + 60){

  spacemovement = -100 ; // Loops space background movement.

}
}
