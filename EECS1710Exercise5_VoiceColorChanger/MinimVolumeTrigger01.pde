//Modified from Professor Nick Fox-Gieg's MinimVoiceTrigger example
float maxThreshold = 0.1;
float mediumThreshold = 0.05;
float minThreshold = 0.01;

void setup() {
  //size(800, 600, P2D);  
  setupMinim();
}

void draw() {
  updateMinim();
  
  float amp = getAmp();
  
  // using two thresholds instead of one makes for smoother transitions
  if (mousePressed){
  if (amp > maxThreshold) {
    rect(pmouseX, pmouseY, 20, 20);    //Turns the rect pen green
    fill(0,255,0);
    noStroke();
  } else if (amp > mediumThreshold) {
    rect(pmouseX, pmouseY, 20, 20);     
    fill(255,255,0);                       //Turns the rect pen yellow
     noStroke();
  }
  else if (amp < minThreshold) {
    rect(pmouseX, pmouseY, 20, 20);
    fill(0,0,255);                           //Turns the rect pen blue
     noStroke();
  }
 }
}

void exit() {
  stopMinim();
}
