void setup() {
  size(900, 900);
  background(0);
  noStroke();
  for (int x=-200; x<1500; x=x+10) {
    for (int y=-200; y<1500; y=y+10) {
      float noiseFactor=noise(x/2500., y/2500.)*150;
      drawElement(x, y, noiseFactor);
    }
  }
}

void drawElement(float x, float y, float noiseFactor) {
  stroke(255,90);
  strokeWeight(1);
  pushMatrix();
  translate(x, y);
  rotate(noiseFactor*radians(360));
  //line(0, 0, 70, 0);
  noFill();
  beginShape();
  curveVertex(10, 100);
  curveVertex(20, 200);
  curveVertex(30, 300);
  curveVertex(40, 400);
  curveVertex(50, 500);

  endShape();
  popMatrix();
}

void draw() {
  //saveFrame("output/NAME-03.png");
  //  if (frameCount == 1) {
  //    exit();
  //  }
}
