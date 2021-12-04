void keyPressed(){
if (keyPressed){
  if (key == ' '){
filter(shader_example);    /// Sets off example shader.
 }
 
  if (key == 'b'){
    tint(0, 153, 204, 226); 
image(PIC1, 0, 0, width, height);    /// Shows original image with blue tint and combines it with thresh shaded version.
 }
 
 if (key == 'z'){
   
 filter(shader_thresh);    //Enables thresh shader
 }
 
 if (key == 'o'){
    tint(255, 255, 255, 255); 
 image(PIC1, 0, 0, width, height);   /// Shows original image unfiltered.
 }
}
}
