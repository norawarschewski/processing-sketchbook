color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(fg);
}

void draw() {
  background(fg); 
  translate(width/2, height/2);
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  fill(bg);

  float wave = sin(frameCount * 0.05) * 150;
  float wave2 = sin(frameCount * 0.05) * -150;
  float wave3 = sin(frameCount * 0.05) * 100;
  rect(0, -100, 140, 20);
  rect(0, 0, 20, 200);
  rect(0, 100, 140, 20);

  rect(0, 120+wave3, 70, 250);
  rect(0, 220+wave, 140, 40);
  rect(0, -220+wave2, 140, 40);

  fill(fg);
  rect(0, 260, 400, 300);
  rect(0, -260, 400, 300);
}
