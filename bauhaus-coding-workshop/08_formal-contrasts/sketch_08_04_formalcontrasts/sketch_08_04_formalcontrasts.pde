color bg = #000000;
color fg = #f1f1f1;
float o = 90;
float size = 300;
float circleX=450;
float circleY=450;
float circleX1=450;
float circleY1=450;
float circleX2=450;
float circleY2=450;
float circleX3=450;
float circleY3=450;
int xDir=1;
int xDir1=-1;
int xDir2=2;
int xDir3=-2;

void setup() {
  size(900, 900);
  background(fg);
}

void draw() {
  background(fg); 
  blendMode(NORMAL);
  ellipseMode(CENTER);
  noStroke();
  fill(bg, o);

  ellipse(450, 450, size, size);

  ellipse(circleX, circleY, size, size);
  circleX=circleX+xDir;
  if (circleX>width-400 || circleX<400)
  {
    xDir=-xDir;
  }

  ellipse(circleX1, circleY1, size, size);
  circleX1=circleX1+xDir1;
  if (circleX1>width-400 || circleX1<400)
  {
    xDir1=-xDir1;
  }

  ellipse(circleX2, circleY2, size, size);
  circleX2=circleX2+xDir2;
  if (circleX2>width-350 || circleX2<350)
  {
    xDir2=-xDir2;
  }

  ellipse(circleX3, circleY3, size, size);
  circleX3=circleX3+xDir3;
  if (circleX3>width-350 || circleX3<350)
  {
    xDir3=-xDir3;
  }

  rec();
}
