int brickWidth = 40;
int brickHeight = 15;
int cols = 20;
int rows = 31;
int columnOffset = 60;
int rowOffset = 31;
float rotationIncrement = 0.15;

void setup() {
  size(900, 900);
  background(0);
  smooth();
  fill(#f1f1f1);
  noStroke();  
  noLoop();
}

void draw() {
  translate(width/2-450, height/2-450);
  for (int i=0; i<cols; i++) {
    push();
    translate(i * columnOffset, 0);
    float r = random(-QUARTER_PI, QUARTER_PI);
    int dir = 1;
    for (int j=0; j<rows; j++) {
      push();
      translate(0, rowOffset * j);
      rotate(r);
      rect(-brickWidth/2, -brickHeight/2, brickWidth, brickHeight);
      pop();
      r += dir * rotationIncrement;
      if (r > QUARTER_PI || r < -QUARTER_PI) dir *= -1;
    }
    pop();
  }
}
