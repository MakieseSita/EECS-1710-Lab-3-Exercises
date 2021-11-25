void setInfintyGauntlet(){

image(InfinityGauntletSnap_gif[f], 300, 200, GauntletWidth, GauntletHeight); //Orange Bird gets imported into the game screen.
  
  
  println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == InfinityGauntletSnap_frames) f = 0;
fill(0, 0);
rect(0, 0, width, height);

//if (f > 13){ f = 13;}

}
