float circleSize = 0; // starting at size = 0 for the circle
float alphaLevel = 255; //initial alpha or opacity value is maximum

void setup() {
  size(900, 900);
  background(0);
  smooth();
  noFill();
}

void draw() {  
  background(0);
  stroke(255, alphaLevel);
  strokeWeight(2);
  ellipseMode(CENTER);
  rectMode(CENTER);

  for (int i = 0; i < circleSize; i = i + 50) {
    ellipse(width/2, height/2, circleSize - i, circleSize - i);
  }

  circleSize = circleSize + 1;

  if (circleSize == 300) {
    circleSize = 0;
  }

  if (circleSize>300 && circleSize<500) {
    alphaLevel = map(circleSize, 300, 400, 255, 0);
    rect(width/2, height/2, circleSize , circleSize );
  } else {
    alphaLevel = 255;
  }
}
