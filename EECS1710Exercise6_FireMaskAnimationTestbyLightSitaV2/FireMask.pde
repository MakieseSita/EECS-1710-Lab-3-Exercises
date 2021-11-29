void setFireMask(){

//image(FireMask_gif[f], faces[i].x, faces[i].y, faces[i].width, faces[i].height); //Test for importing fire mask animation.
  
  
  println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;  //Navigates through the fire mask frames and plays them in chronilogical order.
  if (f == FireMask_frames) f = 0;
fill(0, 0);
rect(0, 0, width, height);

//if (f > 13){ f = 13;}

}
