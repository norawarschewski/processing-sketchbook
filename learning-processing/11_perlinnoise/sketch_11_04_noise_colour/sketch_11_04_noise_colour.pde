void setup() {
  size(1000, 1000);
  background(0);
  for (int i=700; i>1; i=i-10) {  //note that we are counting down, in steps of -10
    stroke(0);
    float xOff=i/100.;
    float yOff=i/100;
    float r = noise(xOff, yOff)*255;
    float g = 0;
    float b = 0;
    fill (r, g, b);
    ellipse(500, 500, i, i);
  }
}
