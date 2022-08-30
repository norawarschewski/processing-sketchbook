color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
  frameRate(15);
}

void draw() {
  background(bg);
  translate(width/2, height/2);

  float amount = 200;
  float magnitude = 750;

  stroke(fg);
  strokeWeight(2);
  noFill();

  for (int i = 0; i < amount; i++) {
    float wave1 = sin(radians(frameCount + i * 450)) * magnitude/5;
    float wave2 = cos(radians(frameCount + i * 250)) * magnitude/5;
    rotate(2);
    rect(wave1, wave2, 2, 2+wave1);
  }
}
