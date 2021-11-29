void setFireMask(){

//image(FireMask_gif[f], faces[i].x, faces[i].y, faces[i].width, faces[i].height); //Orange Bird gets imported into the game screen.
  
  
  println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == FireMask_frames) f = 0;
fill(0, 0);
rect(0, 0, width, height);

//if (f > 13){ f = 13;}

}
