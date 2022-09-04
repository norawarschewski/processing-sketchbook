void setup() {
  size(1000, 1000);
}

void draw() {
  background(4, 10, 70);
  drawSpaceship(500, 159, 223, color(70, 0, 100));
  drawSpaceship(126, 89, 93, color(250, 200, 80));
  drawSpaceship(422, 286, 84, color(100, 0, 140));
  drawSpaceship(294, 49, 48, color(130, 5, 180));
  drawSpaceship(162, 220, 151, color(150, 0, 220));
}

void drawSpaceship(int x, int y, int spaceshipSize, color windowColor) {
  fill(0);
  noStroke();
  ellipse(x, y, spaceshipSize, spaceshipSize/3);
  ellipse(x, y-spaceshipSize/8, spaceshipSize/3, spaceshipSize/3);
  fill (windowColor);
  ellipse (x, y, spaceshipSize/8, spaceshipSize/8);
  ellipse (x-spaceshipSize/4, y, spaceshipSize/8, spaceshipSize/8);
  ellipse (x+spaceshipSize/4, y, spaceshipSize/8, spaceshipSize/8);
}
