color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
}

void draw() {
  background(bg);
  translate(width/2, height/2);

  float amount = 15;
  float magnitude = 450;

  fill(fg);

  for (int i = 0; i < amount; i++) {

    float wave1 = sin(radians(frameCount + i * 10)) * magnitude;
    float wave2 = cos(radians(frameCount + i * 50)) * magnitude;

    rect(0, wave2, wave1, 5);

    wave1++;
  }
}
