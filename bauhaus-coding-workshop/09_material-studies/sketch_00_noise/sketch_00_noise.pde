color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(fg);
  for (int x=0; x<width; x=x+13) {
    for (int y=0; y<height; y=y+13) {
      float noiseFactor=noise(x/3000., y/500.)*15;
      drawElement(x, y, noiseFactor, noiseFactor);
    }
  }
}

void drawElement(float x, float y, float noiseFactor, float size) {
  pushMatrix();
  translate (x, y); 
  rotate(noiseFactor*radians(150));

  float body = random(550, 600);

  scale(0.01); 
  rectMode(CENTER);
  fill(bg);
  noStroke();
  rect(x, y, body, body);
  popMatrix();
}

void draw() {

}
