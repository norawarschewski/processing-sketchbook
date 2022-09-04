float angNoise, radiusNoise;
float xNoise, yNoise;
float angle = -PI/2;
float radius;
float strokeCol = 254;
int strokeChange = -1;

void setup() {
  size(900, 900);
  smooth();
  frameRate(100);
  background(#f1f1f1);
  noFill();

  angNoise = random(10);
  radiusNoise = random(10);
  xNoise = random(10);
  yNoise = random(10);
}

void draw() {

  radiusNoise += 0.005;
  radius = (noise(radiusNoise) * 550) +1;

  angNoise += 0.005;
  angle += (noise(angNoise) * 6) - 3;
  if (angle > 360) {
    angle -= 360;
  }
  if (angle < 0) {
    angle += 360;
  }

  xNoise += 0.01;
  yNoise += 0.01;
  float centerX = width/2 + (noise(xNoise) * 100) - 50;
  float centerY = height/2 + (noise(yNoise) * 100) - 50;

  float rad = radians(angle);
  float x1 = centerX + (radius * cos(rad));
  float y1 = centerY + (radius * sin(rad));

  float opprad = rad + PI;
  float x2 = centerX + (radius * cos(opprad));
  float y2 = centerY + (radius * sin(opprad));

  strokeCol += strokeChange;
  if (strokeCol > 254) {
    strokeChange = -1;
  }
  if (strokeCol < 0) {
    strokeChange = 1;
  }
  stroke(strokeCol, 60);
  strokeWeight(1);
  line(x1, y1, x2, y2);
}
