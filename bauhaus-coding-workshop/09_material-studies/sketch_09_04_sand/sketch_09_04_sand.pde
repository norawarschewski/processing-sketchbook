color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(fg);
  for (int x=0; x<width; x=x+2) {
    for (int y=0; y<height; y=y+2) {
      float noiseFactor=noise(x/1500., y/150.)*10;
      drawElement(x, y, noiseFactor, noiseFactor);
    }
  }
}

void drawElement(float x, float y, float noiseFactor, float size) {
  pushMatrix();
  translate (x, y); 
  rotate(noiseFactor*radians(360));

  float body = random(10, 80);

  scale(0.01); 
  ellipseMode(CENTER);
  fill(bg);
  noStroke();
  ellipse(x, y, body, body);
  popMatrix();
}

void draw() {
  
  saveFrame("output/NAME-######.png");
  if (frameCount == 1) {
    exit();
  }
}
