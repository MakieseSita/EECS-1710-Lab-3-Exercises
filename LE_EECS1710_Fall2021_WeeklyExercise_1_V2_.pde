//Programmer: Makiese Light Sita
//Program:Circle Trail Blazer
//Date of Initiation: Tuesday, September 14 2021
//Date of Completion: Tuesday, September 21 2021
int opacity = 255;

void setup(){
size(800, 400);
noStroke();
smooth();
background(0);
}

void draw(){
  if (mousePressed){
//stroke(234, 23, 3, 222);
stroke(234,23,3,12);
line(mouseX, mouseY, pmouseX, pmouseY);
fill(0, 20);
rect(0, 0, width, height);

fill(255, 0, 0, 22);
ellipse(mouseX, mouseY, opacity, opacity);
pmouseY = pmouseY - 3;
opacity = opacity - 1;


 if (keyPressed){
opacity = opacity + 3;
 }
 
  if (!keyPressed){
 fill(203,20);
opacity = opacity - 1;
 }
  }

/*if (!mousePressed){
stroke(234, 23, 3, 222);
line(mouseX, mouseY, pmouseX, pmouseY);
fill(283, 33, 2, opacity);
ellipse(mouseX, mouseY, 99, opacity);
pmouseY = pmouseY - 3;
opacity = opacity - 1;

 if (keyPressed){
opacity = opacity + 3;
 }*/
 
  /*if (!keyPressed){
    
opacity = opacity - 1;
 }*/
} 
