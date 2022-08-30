color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size (900, 900);
  background(bg);
  translate(width/2, height/2);
}

void draw () {
  background(bg);
  noStroke();
  for (int i = 0; i < 5; i++) {
    fill(frameCount % 255);
    rect(sin(frameCount/(i+5))*(i+100)+450, i*70+250, 40, 40);
  }
}
