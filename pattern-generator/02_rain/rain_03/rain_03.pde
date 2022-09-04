// Change it to 400 or something ;)
int numberOfDrops = 100;

// Lets start with 2 empty arrays. We just mention to the code that we want to use these later on:
float[] positionsY;
float[] fallSpeeds;

float step;


void setup() {
  size(1080, 1080);

  step = float(width)/numberOfDrops;
  stroke(255);
  fill(0);
  smooth();

  //Time to fill the arrays:

  positionsY = new float[numberOfDrops];
  fallSpeeds = new float[numberOfDrops];

  for (int i = 0; i < positionsY.length; i++) {
    positionsY[i] = random(height);
    fallSpeeds[i] = random(1.5, 4);
  }
}

void draw() {

  background(20);

  for (int i = 0; i < positionsY.length; i++) {

    float x = i*step + step/2;

    ellipse(x, positionsY[i], step, step);

    positionsY[i] += fallSpeeds[i];

    if (positionsY[i] >= height+step) {
      positionsY[i] = -step;
      fallSpeeds[i] = random(1.5, 4);
    }
  }
}
