color bg = #000000;
color fg = #f1f1f1;
int size;
float circleX;
float circleY;

int numPoints = 3;
int numFrames = 60;
PVector[][] points = new PVector[numPoints][numFrames];
int currentFrame;

float interpolation, interpolationSpeed = 0.005;

int numPointsRect = 2;
int numFramesRect = 60;
PVector[][] pointsRect = new PVector[numPointsRect][numFramesRect];
int currentFrameRect;

Line line;
Rect rect;

void setup() {
  size(900, 900);
  background(bg);

  line = new Line ();
  rect = new Rect ();

  for (int i=0; i<numPoints; i++) {
    for (int j=0; j<numFrames; j++) {
      points[i][j] = new PVector(random(width), random(height));
    }
  }
  for (int k=0; k<numPointsRect; k++) {
    for (int l=0; l<numFramesRect; l++) {
      pointsRect[k][l] = new PVector(random(width), random(height));
    }
  }
}

void draw() {
  background(bg); 

  line.display();
  rect.display();

  ellipseMode(CENTER);
  noStroke();
  fill(fg);
  ellipse(circleX, circleY, size, size);
  circleX = circleX +- random(0, 100);
  circleY = circleY +- random(0, 100);
  size=int(random(100, 250)); // diameter changed randomly
}
