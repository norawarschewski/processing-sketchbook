color bg = #000000;
color fg = #f1f1f1;

float y = -100;
float move;

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

  float wave = sin(frameCount * 0.09) * 40;

  stroke(fg);
  strokeWeight(10);
  strokeCap(SQUARE);

  // stem
  line(-50, y, -50+wave, 0);
  line(-50+wave, 0, -50, 100);

  // top bar 
  line(-70, -100, 70, -100);

  // bottom bar 
  line(-70, 100, 70, 100);

  // inner triangle 
  noStroke();
  fill(fg);
  triangle(-15+wave, -15, -15+wave, 0, -40+wave, 0);
  triangle(-15+wave, 0, -15+wave, 15, -40+wave, 0);

  // outer triangles 
  fill(fg);
  triangle(70, -100, 70, -75, 45, -75);
  triangle(70, 100, 70, 75, 45, 75);
}
