void setup() {
  size(900, 900);
  background(0);
  int diameter=2;

  for (int x=0; x< width; x=x+diameter) {
    for (int y=0; y<height; y=y+diameter) {
      float xOff=x/400.;
      float yOff=y/400.;
      float c = noise(xOff, yOff)*255;
      if (x==10*diameter && y==10*diameter) {
        fill(c, c, c);
      } else {
        fill(c, c, c);
      }
      noStroke();
      ellipse(x, y, diameter, diameter);
    }
  }
}

void draw (){
saveFrame("output/NAME-######.png");
  if (frameCount == 2) {
    exit();
  }
}
