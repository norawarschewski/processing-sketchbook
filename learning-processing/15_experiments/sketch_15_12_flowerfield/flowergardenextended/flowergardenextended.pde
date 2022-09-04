void setup() {
  size(800, 800);
  background(220, 230, 250);
}

void draw() {
  drawFlower(200, 600, 400, 12, 10, 12, 130, color(250, 200, 80), color(170, 190, 125), color(240, 150, 60));
  drawFlower(400, 400, 400, 10, 15, 10, 100, color(240, 150, 60), color(170, 190, 125), color(250, 200, 80));
  drawFlower(600, 500, 400, 6, 17, 6, 70, color(250, 200, 80), color(170, 190, 125), color(240, 150, 60));
}

void drawFlower(int x, int y, float flowerHeight, int numDots, int numDots2, int numDots3, int bodySize, color yellow, color green, color orange) {

  // stem
  rectMode(CENTER);
  noStroke();
  fill(green);
  rect(x, y+200, 4, flowerHeight);

  // body
  ellipseMode(CENTER);
  fill(yellow);
  noStroke();
  ellipse(x, y, bodySize, bodySize);


  for (int a=0; a<360; a+=(360/numDots2)) {
    //dots around flower
    int dx = (int)(cos(radians(a))*50);
    int dy = (int)(sin(radians(a))*50);
    noStroke();
    fill(green);
    ellipse(x+dx, y+dy, 15, 15); 
  }
  for (int a=0; a<360; a+=(360/numDots3)) {
    //dots around flower
    int dx = (int)(cos(radians(a))*70);
    int dy = (int)(sin(radians(a))*70);
    noStroke();
    fill(orange);
    ellipse(x+dx, y+dy, 18, 18);
  }
  for (int a=0; a<360; a+=(360/numDots)) {
    //dots around flower
    int dx = (int)(cos(radians(a))*70);
    int dy = (int)(sin(radians(a))*70);
    noStroke();
    fill(yellow);
    ellipse(x+dx, y+dy, 10, 10);
  }
}
