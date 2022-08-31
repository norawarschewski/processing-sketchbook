color bg = #000000;
color fg = #f1f1f1;
int size = 300;
float x = 0;
float y = 0;
float angle = 0;
float rotation = 0;

void setup() {
  size(900, 900);
}

void draw() {
  background(bg);
  ellipseMode(CENTER);
  rectMode(CENTER);

  noStroke();

  fill(fg);
  float x=200*cos(radians(-angle)) + width/2;
  float y=200*sin(radians(-angle)) + height/2;
  rect(x, y, size, size);

  fill(bg);
  push();
  translate(width/2, height/2);
  rotate(-rotation);
  float x1 = 0;
  float y1 = -145;
  float x2 = 120;
  float y2 = 85;
  float x3 = -120;
  float y3 = 85;
  triangle(x1, y1, x2, y2, x3, y3);
  pop();

  fill(fg);
  float ex=200*cos(radians(angle)) + width/2;
  float ey=200*sin(radians(angle)) + height/2;
  ellipse(ex, ey, size, size);

  angle++; // Increases the value of the variable angle.
  rotation=rotation+0.01;
  
  rec();
}
