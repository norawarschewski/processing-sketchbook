PFont ibm;
float x = 200;
float y = 450;
float vx = 100;
float vy = 0;
float dt = 1.0/30.0;
float gravity = 400;
float trail = .9;

void setup() {
  size(900, 900);
  frameRate(30);
  smooth();
  ibm = createFont("IBMPlexSans-Medium.otf", 200);
  textFont(ibm);
}

void draw() {
  fill(0, 0, 0, 60);
  rect(0, 0, width, height);
  fill(255);
  text("A", x, y);
  vy += gravity*dt;
  x += vx*dt;
  if (x < 0) {
    x = 0;
    vx *= -trail;
  } else if (x > width-100) {
    x = width-100;
    vx *= -trail;
  }
  if (y > height) {
    y = height;
    vy *= -trail;
  }
}
