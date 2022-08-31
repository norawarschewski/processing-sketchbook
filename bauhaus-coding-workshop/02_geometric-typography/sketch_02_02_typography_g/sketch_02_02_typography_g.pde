color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
  smooth();
}

void draw() {
  background(bg);
  translate(width/2, height/2);
  rectMode(CENTER);
  ellipseMode(CENTER);

  noFill();
  stroke(fg);
  strokeWeight(20);
  strokeCap(SQUARE);

  ellipse(0, -100, 200, 200);
  ellipse(0, 130, 180, 180);

  rect(90, -190, 20, 20);
  rect(-90, 20, 20, 20);
}
