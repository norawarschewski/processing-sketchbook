void setup() {
  size(900, 900);
  background(0);
  noStroke();
  for (int x=-100; x<width+500; x=x+10) {
    for (int y=0; y<height+100; y=y+15) {
      float noiseFactor=noise(x/900., y/900.)/10;
      drawElement(x, y, noiseFactor);
    }
  }
}
 
void drawElement(float x, float y, float noiseFactor) {
  stroke(111);
  strokeWeight(0.1);
  pushMatrix();
  translate(x, y);
  rotate(noiseFactor*degrees(360));
  rect(0, 0, 40, 1);
  popMatrix();
}
