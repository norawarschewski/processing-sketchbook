color bg = #000000;
color fg = #f1f1f1;
float x = 0;

void setup() {
  size(900, 900);
  background(bg);
  smooth();
  frameRate(25);
}

void draw() {
  background(bg);
  translate(width/2, height/2);

  float amount = 50;
  float magnitude = 200;

  stroke(fg);
  strokeWeight(2);

  for (int i = 0; i < amount; i++) {

    float wave1 = sin(radians(frameCount + i * 10)) / magnitude;
    float wave2 = cos(radians(frameCount + i * 20)) * magnitude;

    rotate(degrees(35));
    ellipse(wave1, wave2, 1, 1);
  }
}
