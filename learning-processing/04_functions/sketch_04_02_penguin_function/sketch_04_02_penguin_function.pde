color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

float x;
float y;

void setup() {
  size(1000, 1000);
  drawPenguin(); // calls penguin
}

void draw() {
  background(blue);
  drawPenguin(); // calls penguin
}
