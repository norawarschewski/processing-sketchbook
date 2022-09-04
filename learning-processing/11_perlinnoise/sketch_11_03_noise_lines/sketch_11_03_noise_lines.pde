void setup() {
  size(1000, 1000, P3D); // 3D space
  background(0);
  noStroke();
  for (int x=150; x<930; x=x+10) {
    for (int y=150; y<930; y=y+10) {
      float noiseFactor=noise(x/1000., y/1000.)*10;
      drawElement(x, y, noiseFactor);
    }
  }
}
 
void drawElement(float x, float y, float noiseFactor) {
  stroke(255,150);
  push();
  translate(x, y);
  rotate(noiseFactor*radians(360));
  line(0, 0, 70, 0);
  pop();
}
