color bg = #000000;
color fg = #f1f1f1;
float xpos;
float ypos;
float size;
int i = 0;
float t;

void setup() {
  size(900, 900);
  background(bg);

  xpos = 0;
  ypos = 450;
}
void draw() {
  for (int i = 0; i > 100; i = i++);
  {
    t = random (255);
    float size = random (5, 25);

    ellipseMode(CENTER);
    fill(fg, t);
    noStroke();
    ellipse(xpos, ypos, size, size);
    xpos += random(-10, 20);
    ypos += random(-15, 15);
  }
}
