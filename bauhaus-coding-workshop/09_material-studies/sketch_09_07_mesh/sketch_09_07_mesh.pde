void setup() {
  size(900, 900);
  background(0);
  noStroke();
  for (int x=0; x<width+10; x=x+5) {
    for (int y=0; y<height+10; y=y+5) {
      float noiseFactor=noise(x/1000., y/1000.)*10;
      drawElement(x, y, noiseFactor);
    }
  }
}
 
void drawElement(float x, float y, float noiseFactor) {
  stroke(255,150);
  pushMatrix();
  translate(x, y);
  rotate(noiseFactor*radians(360));
  ellipse(0, 0, 10, 1);
  popMatrix();
}
