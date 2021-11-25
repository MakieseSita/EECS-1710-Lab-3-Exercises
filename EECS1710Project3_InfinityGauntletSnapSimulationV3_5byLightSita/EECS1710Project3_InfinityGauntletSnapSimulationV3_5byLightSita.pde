//Programmer: Makiese Light Sita
//Programmer: Infinty Gauntlet Snap Simulation
//Started: Sunday, November 21 2021
//Completed: Tuesday, November 23 2021

/*PImage img;
int pointillize = 12;
int pixel1movement;
void setup() {
  size(640, 480, P2D);  
  img = loadImage("eggman.jpg");
  img.loadPixels();
}

//http://learningprocessing.com/examples/chp15/example-15-14-Pointillism

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;

  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();

  // Draw an ellipse at that location with that color
  if (mousePressed){
    pixel1movement = pixel1movement + 6;
  fill(r,g,b,100);
  rect(x,y,pointillize,pointillize);
  rect(x,y + pixel1movement,pointillize,pointillize);
  }
}*/

PImage[] InfinityGauntletSnap_gif;
int InfinityGauntletSnap_frames;
int f;
int GauntletWidth = 300;
int GauntletHeight = 300;
PImage img;
int pointillize = 12;
int pixel1movement;
ArrayList<Dot> dots;
int scaler = 3; // will use only every 1th pixel from the image

void setup() {
  //Modified from PixelDotExample05 Example by Professor Nick Fox-Gieg
  size(50, 50, P2D);  
  img = loadImage("Clarance Parker by Light Sita WIP#4 Image(Paranormal Mysteries Based Pixel Art).png"); //Character entirely pixel painted by me, Makiese Light Sita.
  surface.setSize(img.width, img.height);
  
  img.loadPixels();
  //img.updatePixels();
  
  //image(img, 0, 0);
  dots = new ArrayList<Dot>();

  for (int x = 0; x < img.width; x += scaler) {
    for (int y = 0; y < img.height; y += scaler) {
      // this translates x and y coordinates into a location in the pixels array
      int loc = x + y * (img.width);
      
      dots.add(new Dot(x, y, img.pixels[loc]));
    }
  }
  img.updatePixels();
  //image(img, 0, 0);
  
  
  InfinityGauntletSnap_frames = 10;
 InfinityGauntletSnap_gif = new PImage[InfinityGauntletSnap_frames];
 
  int i = 0;
   while(i < InfinityGauntletSnap_frames){
 InfinityGauntletSnap_gif[i] = loadImage("Gauntletframe_" + i +"_delay-0.08s.gif"); //Magic Gauntlet entirely pixel painted and animated by me, Makiese Light Sita
  
  i = i+1;
  
   }
  
}

void draw() { 
  background(127);
  if (!mousePressed){
  tint(233);
  image(img, 0, 0);
  }
  //image(img, 0, 0);
  for (Dot dot : dots) {
  
    //dot.run();
    
    if (mousePressed){
    dot.run();   //Runs the disintegration effect.
    }
  }
  
  surface.setTitle("" + frameRate);
  if (mousePressed){
  setInfintyGauntlet(); //Sets up the Magic Gaunlet.
 
  }
}
