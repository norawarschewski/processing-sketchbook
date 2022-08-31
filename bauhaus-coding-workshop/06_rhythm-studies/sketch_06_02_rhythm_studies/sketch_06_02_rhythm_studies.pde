PFont ibm;

color bg = #000000;
color fg = #f1f1f1;

float amount = 2;


void setup() {
  size(900, 900);
  background(fg);
  frameRate(60);
  ibm = createFont("IBMPlexSans-Medium.otf", 25);
}

void draw() {
  fill(bg);
  textFont(ibm);
  char letter = char(round(random(0, 155)));

  float r1 = round(random(height)-25);
  float r2 = round(random(height)-25);
  int r3 = round(random(100));

  for (int i = 0; i < r1; i = i + r3) {
    for ( int j = 0; j <= amount; j++) {
      text(letter, i, r2);
    }
  }

  //saveFrame("output/NAME-###.png");
  //if (frameCount == 10) {
  //  exit();
  //}
}
