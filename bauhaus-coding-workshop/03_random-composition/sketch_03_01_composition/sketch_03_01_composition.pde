color bg = #000000;
color fg = #f1f1f1;
int size;
float circleX;
float circleY;
float x1;
float y1;
float x2;
float y2;
float x3;
float y3;
float x4;
float y4;
float x5;
float y5;

void setup() {
  size(900, 900);
  frameRate(2);
  background(bg);
}

void draw() {
  background(bg);

  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  fill(fg);

  x1 = random(0, width);
  y1 = random(0, height);
  x2 = random(0, width);
  y2 = random(0, height);
  stroke(fg);
  strokeWeight(30);
  strokeCap(SQUARE);
  line(x1, y1, x2, y2);

  ellipse(circleX, circleY, size, size);
  size=int(random(100, 250));
  circleX = max(0+size+1, min(width-size-1, random(width)));
  circleY = max(0+size+1, min(height-size-1, random(height)));

  x1 = random(0, width);
  y1 = random(0, height);
  x2 = random(0, width);
  y2 = random(0, height);
  x3 = random(0, width);
  y3 = random(0, height);
  x4 = random(0, width);
  y4 = random(0, height);
  x5 = random(0, width);
  y5 = random(0, height);
  stroke(fg);
  strokeWeight(5);
  strokeCap(ROUND);
  noFill();
  beginShape();
  curveVertex(x1, y1);
  curveVertex(x2, y2);
  curveVertex(x3, y3);
  curveVertex(x4, y4);
  curveVertex(x5, y5);
  endShape();
  
    saveFrame("output/04_01_randomcomposition-###.png");

  if (frameCount == 10) {
    exit();
  }
}
