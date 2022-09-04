color squareColor; // Colour for the squares

color beige = color(245, 240, 230);
color black = color(0);
color orange = color(240, 115, 35);
color grey = color(190);
color mint = color(200, 230, 225);
int size = 153;

void setup() {
  size(730, 1020);
  background(beige);
  PImage bauhausText = loadImage("bauhaus.png");
  image(bauhausText, 0, 0); 



  for (int x=58; x<600; x=x+(int)size) {
    for (int y=65; y<750; y=y+(int)size) {

      int c = (int) random(0, 5);
      if (c == 0) squareColor = beige;
      else if (c == 1) squareColor = black;
      else if (c == 2) squareColor = orange;
      else if (c == 3) squareColor = grey;
      else if (c == 4) squareColor = mint;

      fill (squareColor);
      noStroke();      
      rect(x, y, size, size);
    }
  }

  // black frame
  stroke(0);
  strokeWeight(40);
  noFill();
  rect(0, 0, 730, 1020);
}

void draw() {
  float x = 58; 
  float y = 65;
  
  PImage bauhaus1 = loadImage("furn1.jpg");
  PImage bauhaus2 = loadImage("furn4.jpg");
  
  noStroke();
  
  noStroke();
  if (mouseX > x && mouseX < 211 && mouseY > y && mouseY < 211) {
    fill(255);
    image(bauhaus1, x, y);
  }
  else if (mouseX < x && mouseX > 211 && mouseY < y && mouseY > 211) {
    fill(beige);
    rect(x, y, size, size);
  }
}
