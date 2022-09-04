PShape alien;

void setup() {
  size(1080, 1080);
  alien = loadShape("alien.svg");
  alien.disableStyle();
  shapeMode(CENTER);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  shape(alien, mouseX, mouseY, 100, 100);
}
