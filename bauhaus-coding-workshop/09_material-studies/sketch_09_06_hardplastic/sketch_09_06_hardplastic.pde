float bigRadius;
float smallRadius;

void setup () {
  size (900, 900);
  bigRadius = width/14;
  smallRadius = bigRadius*.4;
  smooth();
}

void draw() {
  background(0);
  for (int i=-10; i<200; i++)
    for (int j=-40; j<20; j++) {
      float x = map(i, 0, 15, width/40, width-width/40);
      float y = map(j, 0, 13, height/30, height-height/30);
      noStroke();
      fill(255, map(i, 0, 15, 0, 255));
      rect(x, y, bigRadius, bigRadius);
      //fill(255);
      //ellipse(x,y,smallRadius,smallRadius);
    }

  //saveFrame("output/NAME-######.png");
  //if (frameCount == 1) {
  //  exit();
  //}
}
