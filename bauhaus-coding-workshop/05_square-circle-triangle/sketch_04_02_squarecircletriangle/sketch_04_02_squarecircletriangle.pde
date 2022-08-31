color bg = #000000;
color fg = #f1f1f1;
int size = 300;
float x = 0;
float y = 0;
float angle = 0;

void setup() {
  size(900, 900);
  frameRate(100);
}

void draw() {
  background(bg);
  rectMode(CENTER);
  stroke(fg);
  strokeWeight(4);
  noFill();

  push();
  translate(width/2, height/2);
  rotate(-angle);
  float x1 = 0;
  float y1 = -145;
  float x2 = 120;
  float y2 = 85;
  float x3 = -120;
  float y3 = 85;
  triangle(x1, y1, x2, y2, x3, y3);
  pop();

  ellipse(width/2, height/2, size, size);

  push();
  translate(width/2, height/2);
  rotate(angle);
  rect(x, y, size, size);
  pop();

  angle=angle+0.01;
}
