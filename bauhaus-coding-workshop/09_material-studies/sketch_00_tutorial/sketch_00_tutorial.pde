color fg = #eeeeee;
color bg = 0;

void setup() {
  size(900, 900);
}

void draw() {
  background(bg);
  noStroke();
  fill(fg);
  rectMode(CENTER);
  translate(width/2, height/2);

  float steps = frameCount/10;
  float step = 360 / steps;

  for (int i = 0; i < steps; i++) {
    push();
    translate(0, 0);
    rotate(radians(i*step));
    rect(220, 0, 190, 50);
    pop();
  }
}
