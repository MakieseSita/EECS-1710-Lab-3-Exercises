class LetterGenerator {
  //Taken from Professor's week 08 example and modified as best as possible.
  PShape a, b, c, d, f, g;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 150;
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
        case 'a':
          letters.add(new Letter(a, px, py));
          break;
        case 'b':
          letters.add(new Letter(b, px, py));
          break;
        case 'c':
          letters.add(new Letter(c, px, py));
          break;
           case 'd':
          letters.add(new Letter(d, px, py));
          break;
           case 'f':
          letters.add(new Letter(f, px, py));
          break;
             case 'g':
          letters.add(new Letter(g, px, py));
          break;
      }
    }
    
  }


  void initShapes() {
    //draws the letters that are asked to be generated.
    a = createShape();
    a.beginShape();
    a.translate(170, 10);
    a.fill(255, 0, 250);
    a.vertex(4.288147, -3.430542);
    a.vertex(-175.81473, 353.3448);
    a.vertex(-43.739258, 220.41168);
    a.vertex(57.461426, 219.55405);
    a.vertex(177.53, 358.4906);
    a.beginContour();
    a.vertex(-40,180);
    a.vertex(0, 60);
    a.vertex(40,180);
    a.endContour();
    a.endShape(CLOSE);
    
    b = createShape();
    b.beginShape();
    b.translate(50, 10);
    b.fill(255, 0, 250);
    b.vertex(0.0, 0.0);
    b.vertex(-11.149227, 313.036);
    b.vertex(202.40138, 230.70326);
    b.vertex(59.17667, 145.7976);
    b.vertex(204.97429, 24.871357);
    b.beginContour();
    b.vertex(40,120);
    b.vertex(40, 30);
    b.vertex(120, 50);
    b.endContour();
    b.beginContour();
    b.vertex(30,260);
    b.vertex(30, 180);
    b.vertex(110, 230);
    b.endContour();
    b.endShape(CLOSE);   
    
    c = createShape();
    c.beginShape();
    c.translate(220, 0);
    c.fill(255, 0, 250);
    c.vertex(0.0, 0.0);
    c.vertex(-177.53003, -7.718689);
    c.vertex(-168.9537, 282.16125);
    c.vertex(51.457947, 269.29675);
    c.vertex(-127.78732, 246.99829);
    c.vertex(-146.65524, 21.440826);
    c.endShape(CLOSE);
    
    
    d = createShape();
    d.beginShape();
    d.beginContour();
    d.translate(50, 10);
    d.vertex(0.0, 0.0);
    //d.texture(space);
    d.vertex(80, 60);
    d.fill(255, 0, 250);
    d.vertex(290, 195);
    d.vertex(120, 140);
    d.vertex(100, 440);
    d.endContour();
    d.beginShape();
    d.beginContour();
    d.vertex(100, 440);
    d.vertex(290, 195);
    d.vertex(220, 180);
    //vertex(120, 480);
    d.endShape(CLOSE);
    
    f = createShape();  
    f.beginShape();
    f.beginContour();
    f.translate(-50, 10);
    f.texture(space);
    f.vertex(120, 80);
    f.fill(255, 0, 250);
    f.vertex(390, 80);
    f.vertex(140, 180);
    f.vertex(120, 480);
    f.endContour();
    f.beginContour();
    f.vertex(120, 280);
    f.vertex(390, 285);
    f.vertex(340, 180);
    //vertex(120, 480);
    f.endContour();
    f.endShape(CLOSE);
    
    
    g = createShape();
    g.beginShape();
    g.beginContour();
    g.translate(50, 10);
    g.texture(space);
    g.vertex(120, 80);
    g.fill(255, 0, 250);
    g.vertex(390, 80);
    g.vertex(140, 180);
    g.vertex(120, 480);
    g.endContour();
    g.beginContour();
    g.vertex(170, 280);
    g.vertex(390, 285);
    g.vertex(340, 180);
    //vertex(120, 480);
    g.endContour();
    g.beginContour();
    g.vertex(120, 480);
    g.vertex(120, 480);
    g.vertex(390, 285);
    g.vertex(340, 180);
    //vertex(120, 480);
    g.endContour();
    g.endShape(CLOSE);

    
    /*d = createShape();
    d.beginShape();
    d.translate(50, 10);
    d.texture(space);
    d.vertex(0, 0, 0, 0);
    d.vertex(120, 80, 340, 80);
    d.beginContour();
    d.vertex(40, 120, 40,120);
    d.vertex(40, 30, 40, 30);
    d.vertex(120, 50, 120, 50);
    d.endContour();
    /*d.beginContour();
    d.vertex(30, 260, 30, 260);
    d.vertex(30, 180, 30, 180);
    d.vertex(110, 230, 110, 230);
    d.endContour();
    d.endShape(CLOSE);
    
    /*d = createShape();
    d.beginShape();
    d.translate(50, 10);
    d.texture(space);
    d.vertex(120, 80, 35, 45);
    d.fill(255, 0, 0);
    d.vertex(390, 295, 35, 45);
    d.vertex(140, 180, 35, 45);
    d.vertex(120, 480, 35, 45);
    d.endShape(CLOSE);
    d.beginShape();
    d.vertex(120, 480, 35, 45);
    d.vertex(390, 295, 35, 45);
    d.vertex(340, 180, 35, 45);
    //vertex(120, 480);
    d.endShape(CLOSE);*/
  }
  
  void update() {
    //
  }
  
  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    update();
    draw();
  }

}
