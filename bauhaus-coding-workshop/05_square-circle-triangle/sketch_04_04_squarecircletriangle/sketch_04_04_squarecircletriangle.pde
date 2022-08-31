color bg = #000000;
color fg = #f1f1f1;
float size = 300;
float circleSize = 200;
int circleX=450;
int circleY=450;
int xDir=2;
float a = 0;
float s = 0;

void setup() {
  size(900, 900);
  background(bg);
  smooth();
}

void draw() {
  background(bg); 

  // rectangle
  rectMode(CENTER);
  fill(fg);
  noStroke();
  rect(width/2, height/2, size, size);

  // ellipse
  ellipseMode(CENTER);
  blendMode(DIFFERENCE);

  fill(fg);
  ellipse(circleX, circleY, circleSize, circleSize);

  a = a + 0.02;
  s = cos(a)*5;

  translate(width/2, height/2);
  scale(s); 
  fill(fg);
  rotate(radians(45));
  rect(0, 0, 60, 60); 

  translate(0, 0);
  fill(fg);
  scale(s);
  ellipse(0, 0, 20, 20);       
}
