import processing.video.*;
//Programmer: Makiese Light Sita
//Program: Fire Mask Implementation Test
//Started: Sunday, November 28 2021
//Completed: Sunday, November 28 2021

import gab.opencv.*;
import java.awt.Rectangle;

//https://discourse.processing.org/t/using-opencv-with-processing/14148/3
Capture video;
OpenCV opencv;
Rectangle[] faces;
PImage[] FireMask_gif;
int FireMask_frames;
int f;
void setup() {
  size(420, 240);
  video = new Capture(this, width, height);
  video.start();  

  opencv = new OpenCV(this, video.width, video.height);  
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  
   FireMask_frames = 10;
 FireMask_gif = new PImage[FireMask_frames];
 
  int i = 0;
   while(i < FireMask_frames){
 FireMask_gif[i] = loadImage("FireMaskframe_" + i +"_delay-0.08s.gif"); //Fire Mask entirely pixel painted and animated by me, Makiese Light Sita
  
  i = i+1;
  
   }
}

void draw() {
  opencv.loadImage(video);
  faces = opencv.detect();

  image(opencv.getInput(), 0, 0);

  //noFill();
  stroke(255, 25, 0);
  strokeWeight(3);
  for (int i = 0; i < faces.length; i++) {
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    fill(255, 255, 0, 200);
    image(FireMask_gif[f], faces[i].x-50, faces[i].y-85, faces[i].width+100, faces[i].height+130); //Fire Mask gets imported into the game screen.
  
  
  /*println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == FireMask_frames) f = 0;
fill(0, 0);
rect(0, 0, width, height);*/
    setFireMask(); //Plays the animation frames for the fire mask.
  }
}

void captureEvent(Capture c) {
  c.read();
}
