color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
  for (int x=0; x<850; x=x+1) {
    for (int y=-200; y<850; y=y+5) {
      float noiseFactor=noise(x/3000., y/4000.)*80;
      drawElement(x, y, noiseFactor);
    }
  }
}

void drawElement(float x, float y, float noiseFactor) {
  pushMatrix();
  translate (x, y); 
  rotate(noiseFactor*radians(360));

  float body = random(10, 80);

  scale(0.02); 
  ellipseMode(CENTER);
  fill(fg);
  noStroke();
  ellipse(x, y, body, body);
  popMatrix();
}

void draw() {
  //saveFrame("output/NAME-######.png");
  //if (frameCount == 1) {
  //  exit();
  //}
}
