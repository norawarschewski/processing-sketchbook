color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
}

void draw() {
  background(bg); 
  translate(width/2, height/2);
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  fill(fg);
  
  float wave = sin(frameCount * 0.2) * 50;
  ellipse(0, 0+wave, 50, 50);
  
  push();
  float wave2 = sin(frameCount * 0.2) * 0.1;
  rotate(wave2);
  rect(-50, 0, 50, 200);
  pop();
  
  push();
  float wave3 = sin(frameCount * -0.2) * 0.1;
  rotate(wave3);
  rect(50, 0, 50, 200);
  pop();
}
