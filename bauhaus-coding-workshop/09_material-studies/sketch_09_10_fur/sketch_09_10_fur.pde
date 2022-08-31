void setup() {
  size(900, 900);
  background(0);
  noStroke();
  for (int x=-200; x<1500; x=x+15) {
    for (int y=-200; y<1500; y=y+10) {
      float noiseFactor=noise(x/2500., y/2000.)*10;
      drawElement(x, y, noiseFactor);
    }
  }
}

void drawElement(float x, float y, float noiseFactor) {
  stroke(255, 150);
  strokeWeight(2);
  pushMatrix();
  translate(x, y);
  rotate(noiseFactor*radians(45));
  //line(0, 0, 70, 0);
  noFill();
  beginShape();
  curveVertex(80, 200);
  curveVertex(60, 300);
  curveVertex(40, 150);
  curveVertex(20, 200);
  endShape();
  popMatrix();
}

void draw() {
  //saveFrame("output/NAME-03.png");
  //  if (frameCount == 1) {
  //    exit();
  //  }
}
