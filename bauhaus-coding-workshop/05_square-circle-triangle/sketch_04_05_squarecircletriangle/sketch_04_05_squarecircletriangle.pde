float circleX, circleY, triangleX, triangleY, speed, size=150; // circle position, velocity, and radius
color colorC, colorB; // circle colour
color bg = #000000;
color fg = #f1f1f1;

void setup () {
  size(900, 900);

  circleX = width/2;
  circleY = height/2;
  triangleX = width/2;
  triangleY = height/2;
  speed = 2.5;
  colorB = color(fg);
  colorC = color(bg);

  // Static drawing settings
  smooth();
  noStroke();
  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  background(fg);

  // move shapes
  speed*=(circleY>height-size||circleY<size)?-1:1;
  circleY+=speed;

  if (circleY>height-size) {
    colorC=color(fg);
    colorB=color(bg);
  }
  if (circleY<size) {
    colorC=color(bg);
    colorB=color(fg);
  }

  blendMode(BLEND);

  fill(colorB);
  rect(450, 450, 900, 900);
  
  // circle
  fill(colorC);
  ellipse(circleX, circleY, 2*size, 2*size); 

  // triangle
  push();

  speed*=(triangleY<height-size||triangleY>size)?+1:1;
  triangleY-=speed;

  translate(triangleX, triangleY);
  fill(colorC);
  noStroke();
  float x1 = 0;
  float y1 = -150;
  float x2 = 150;
  float y2 = 150;
  float x3 = -150;
  float y3 = 150;
  triangle(x1, y1, x2, y2, x3, y3);
  pop();

  blendMode(DIFFERENCE);
  
  // square
  fill(colorC);
  rect(450, 450, 300, 300);

  // square
  fill(colorB);
  rect(450, 450, 300, 300);
}
