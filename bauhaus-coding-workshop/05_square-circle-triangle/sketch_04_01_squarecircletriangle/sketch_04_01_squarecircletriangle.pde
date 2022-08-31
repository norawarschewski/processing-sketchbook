color bg = #000000;
color fg = #f1f1f1;
int size = 300;

void setup() {
  size(900, 900);
  background(bg);
}

void draw() {
  background(bg);
  rectMode(CENTER);
  stroke(fg);
  strokeWeight(4);
  noFill();

  float wave = sin(frameCount * 0.01) * 450;

  rect(width/2 + wave, height/2-wave, size, size);

  push();
  translate(width/2, height/2+wave);
  float x1 = 0;
  float y1 = -150;
  float x2 = 150;
  float y2 = 150;
  float x3 = -150;
  float y3 = 150;
  triangle(x1, y1, x2, y2, x3, y3);
  pop();

  ellipse(width/2 - wave, height/2 - wave, size, size);
}
