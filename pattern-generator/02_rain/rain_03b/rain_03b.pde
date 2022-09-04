int numberOfDrops = 350;

float[] positionsY;
float[] fallSpeeds;

float step;

float speedMultiplier = 1;


void setup() {
  size(1080, 1080);

  step = float(width)/numberOfDrops;
  stroke(0, 255, 0);
  fill(0);
  smooth();

  positionsY = new float[numberOfDrops];
  fallSpeeds = new float[numberOfDrops];

  for (int i = 0; i < positionsY.length; i++) {
    positionsY[i] = random(height);
    fallSpeeds[i] = random(1.5, 4);
  }
}

void draw() {

  fill(20, 50);
  rect(-10, -10, width+20, height+20);
  
  //BONUS:
  //speedMultiplier = map(mouseX, 0, width, 0.25, 4);

  fill(0);
  for (int i = 0; i < positionsY.length; i++) {

    float x = i*step + step/2;

    ellipse(x, positionsY[i], step, step);

    positionsY[i] += fallSpeeds[i]*speedMultiplier;

    if (positionsY[i] >= height+step) {
      positionsY[i] = -step;
      fallSpeeds[i] = random(1.5, 4);
    }
  }
}
