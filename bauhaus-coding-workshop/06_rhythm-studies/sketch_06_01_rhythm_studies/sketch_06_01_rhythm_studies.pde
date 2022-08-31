color fg = #000000;
color bg = #f1f1f1;

int oneLoop;
int c;

void setup() {
  size(900, 900);
  frameRate(2);
}

void draw() {
  background(fg);
  rectMode(CORNER);
  fill(bg);
  noStroke();

  float rectWidth = random(1, 50);
  float rectHeight = random(50, 350);
  int rectAmt = int(random(5, 20));
  float rectX = random(0, width-rectHeight);
  float rectY = random(0, height-((19*rectWidth)+rectX));

  push();
  translate(0, rectY);
  for (int i = 1; i < rectAmt; i++) {
    rect(rectX, (3*rectWidth)*i, rectHeight, rectWidth);
  }
  pop();

  float rectWidth1 = random(1, 50);
  float rectHeight1 = random(50, 350);
  int rectAmt1 = int(random(5, 20));
  float rectX1 = random(0, width-rectHeight1);
  float rectY1 = random(0, height-((19*rectWidth1)+rectX1));

  push();
  translate(0, rectY1);
  for (int i = 1; i < rectAmt1; i++) {
    rect(rectX1, (3*rectWidth1)*i, rectHeight1, rectWidth1);
  }
  pop();

  float rectWidth2 = random(1, 100);
  float rectHeight2 = random(20, 550);
  int rectAmt2 = int(random(5, 40));
  float rectX2 = random(0, width-rectHeight2);
  float rectY2 = random(0, height-((19*rectWidth2)+rectX2));

  push();
  translate(0, rectY2);
  for (int i = 1; i < rectAmt2; i++) {
    rect((3*rectWidth2)*i, rectX2, rectHeight2, rectWidth2);
  }
  pop();

  //saveFrame("output/NAME-####.png");
  //if (frameCount == 10) {
  //  exit();
  //}
}
