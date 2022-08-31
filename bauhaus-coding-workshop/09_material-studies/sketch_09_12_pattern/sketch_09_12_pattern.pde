void setup() {
  size(900, 900);
  background(0);

  for (int i = 0; i < width; i = i+5) {
    for (int j = 0; j < height; j = j+5) {
      rotate(radians(45));
      ellipse(i, j, 10, 10);
    }
  }
}
