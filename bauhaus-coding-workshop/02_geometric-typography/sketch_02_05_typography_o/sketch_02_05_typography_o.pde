color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
}

void draw() {
  background(fg);
  translate(width/2, height/2);

  float wave = sin(frameCount * 0.09 ) * 50;

  push();
  noFill();
  stroke(bg);
  strokeWeight(65);
  strokeCap(SQUARE);
  rotate(radians(-45));
  arc(0, 0, 200, 200, radians(1), radians(180));
  rotate(radians(-180));
  arc(-40+wave, -2, 200, 200, radians(1), radians(180));
  pop();
}
