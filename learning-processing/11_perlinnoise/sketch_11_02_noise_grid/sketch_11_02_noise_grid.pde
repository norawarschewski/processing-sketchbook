void setup() {
  size(1000, 1000);
  background(0);
  noStroke();
  for (int x=0; x<width; x=x+5) {
    for (int y=0; y<height; y=y+5) {
      float xOff=x/500.;
      float yOff=y/500.;
      float size=noise(xOff, yOff)*5;
      rect(x, y, size, size);
    }
  }
}
