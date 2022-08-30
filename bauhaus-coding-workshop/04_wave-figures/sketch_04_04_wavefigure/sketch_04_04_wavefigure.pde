color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
  smooth();
  frameRate(25);
}

void draw() {
  background(bg);
  translate(width/2, height/2);

  int amount = 20;
  noStroke();
  rectMode(CENTER);
  for (int i = 0; i < amount; i = i + 1) {
    float wave1 = tan(radians(frameCount + i * 10)) * 30;
    float wave2 = sin(radians(frameCount + i * 20)) * 250;
    push();
    translate(0, 0);
    rotate(degrees(90));
    if (i % 5 == 0) {
      rect(wave1, wave2, 50, wave1);
    } else {
      ellipse(wave1, wave2, 20, 20);
    }
    pop();
  }
}
