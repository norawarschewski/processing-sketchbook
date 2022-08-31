void setup() {
  size(900, 900);
  background(0);
  int diameter=30;
  for (int x=0; x< width; x=x+diameter) {
    for (int y=0; y<height; y=y+diameter) {
      diameter=int(random(1, 5)); // diameter changed randomly
      float c=0.299*random(8)+ 0.587*random(255)+0.114*random(7);
      fill(c);
      noStroke();
      ellipse(x, y, diameter, diameter);
    }
  }
}
