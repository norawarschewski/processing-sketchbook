float angle;
float jitter;

void setup() {
  size(900, 900);
  noStroke();
  fill(255);
  rectMode(CENTER);
}

void draw() {
  background(0);

  // during even-numbered seconds (0, 2, 4, 6...)
  if (second() % 5 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = sin(angle);
  translate(width/2, height/2);
  rotate(c);
  rect(0, 0, 250, 250);   
}
