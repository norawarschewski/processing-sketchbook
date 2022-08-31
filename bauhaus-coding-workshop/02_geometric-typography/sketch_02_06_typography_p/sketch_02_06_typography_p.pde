color bg = #000000;
color fg = #f1f1f1;
float size = 70;
float x = -520;
float y = -450;

void setup() {
  size(900, 900);
  background(fg);
}

void draw() {
  background(fg); 
  translate(width/2, height/2);

  rectMode(CENTER);
  noStroke();
  fill(bg);

  float wave = sin(frameCount * 0.05) * size;

  push();
  translate(width/2, height/2);
  rect(x+wave-size, y, size, size);
  rect(x, y-70, size, size);
  rect(x+wave-size, y-140, size, size);
  rect(x, y+70, size, size);
  rect(x+wave-size, y+140, size, size);
  rect(x+size, y, size, size);
  rect(x+size, y-140, size, size);
  rect(x+size*2, y-size, size, size);
  pop();
}
