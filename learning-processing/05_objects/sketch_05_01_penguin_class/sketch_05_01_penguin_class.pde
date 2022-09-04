Penguin PenguinOne; // declare penguins

color blue = #c5e1e8;

void setup() {
  size(1000, 1000);
  PenguinOne = new Penguin (500, 500, color(#4c4c4c), color(#f1f1f1), color(#191919), color(#edb650), color(#c5e1e8), 450, 240, 400, 80, 180, 80, 235, 105, 60, 25);
}

void draw() {
  background(blue);
  PenguinOne.display();
}
