//Programmer: Makiese Light Sita
//Program: ShaderToggler
//Started: Wednesday, December 1 2021
//Finished: Friday, December 3 2021
PShader shader_example;
PShader shader_thresh;
PImage PIC1;
void setup() {
  size(800, 600, P2D);
  shader_example = loadShader("example.glsl");
  shader_example.set("resolution", float(width), float(height));              //Sets up the example shader.
  shader_example.set("rate", 0.5);
  shader_example.set("depth", 0.21);
  
  shader_thresh = loadShader("thresh.glsl");
  //shader2 = loadShader("shaders/thresh.glsl");
  shader_thresh.set("resolution", float(width), float(height), 1.0);  //Sets up the thresh shader.
  PIC1 = loadImage("Pixel Highlight Render Test by Light Sita(Friday, Nov 26 2021).png"); //Image entirely pixel painted by me, Makiese Light Sita
}

void draw() {
  background(0);
  
  stroke(20, 55, 0);
  fill(250, 0, 255);
  //ellipse(width/2, height/2, 400, 400);
 //ellipse(100, height/2, 200, 200);

  image(PIC1, 0, 0, width, height);
  shader_example.set("time", float(millis())/10000.0); //Settings to help run thresh shader
  shader_example.set("tex0", get());
  shader_example.set("tex0", PIC1);
  
 //shader(shader);
 //filter(shader2);
 //tint(0, 153, 204, 226); 
 
 shader_thresh.set("threshold", 255 * ((float) mouseX / (float) width)); 
  shader_thresh.set("tex0", PIC1);                                                                 //Settings to help run example shader
  /*if (keyPressed){
  filter(shader);
  }*/
  
  if (mousePressed){
  keyPressed();  //Enables the user to toggle between filters.
  }
  surface.setTitle("" + frameRate);
}
