color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(fg);
}

void draw() {
  background(fg); 
  translate(width/2, height/2);
  
  float wave = sin(frameCount * 0.02) * 50;
  
  rectMode(CENTER);
  fill(bg);
  noStroke();
  rect(0, -100+wave, 200, 80, 0, 0, 0, 45);
  rect(0, 100-wave, 200, 80, 0, 45, 0, 0);
  stroke(bg);
  strokeWeight(5);
  line(97,-60+wave,-97,60-wave);
}
