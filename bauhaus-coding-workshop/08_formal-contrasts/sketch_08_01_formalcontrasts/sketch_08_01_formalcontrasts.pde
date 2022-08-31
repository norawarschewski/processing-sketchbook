color bg = #000000;
color fg = #f1f1f1;
float size = 300;
float circleSize = 300;
int circleX=450;
int circleY=450;
int xDir=2;

void setup() {
  size(900, 900);
  background(bg);
}

void draw() {
  background(bg); 
  
  rectMode(CENTER);
  fill(fg);
  noStroke();
  rect(450/2, height/2, width/2, height);
  
  ellipseMode(CENTER);
  blendMode(DIFFERENCE);
  fill(fg);
  ellipse(circleX, circleY, circleSize, circleSize);
  circleX=circleX+xDir;
  if (circleX>width-225 || circleX<225)
  {
    xDir=-xDir;
  }
  rec();
}
