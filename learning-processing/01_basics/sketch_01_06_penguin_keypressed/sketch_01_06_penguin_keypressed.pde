color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

float x;
float y;
float angle;
float sca = 1;

float darkbody = 450;
float whitebodyW = 240;
float whitebodyH = 400;
float foreheadW = 80;
float foreheadH = 180;
float wingW = 80;
float wingH = 235;
float footW = 105;
float footH = 60;
float square = 25;

void setup() {
  size(1000, 1000);
  drawPenguin(); // calls penguin
}

void draw() {
  background(blue);
  drawPenguin(); // calls penguin
}

void keyPressed() {
  if (key=='b') { // change background to grey
    blue = #cccccc;
  }
  if (key=='v') { // change background to blue
    blue = #c5e1e8;
  }
  if (keyCode == RIGHT) {// rotate right
    angle = angle+0.1;
  }
  if (keyCode == LEFT) {// rotate left
    angle = angle-0.1;
  }
  if (keyCode == UP) {// scale up
    sca = sca+0.1;
  }
  if (keyCode == DOWN) {// scale down
    sca = sca-0.1;
  }
}

void drawPenguin() {
  translate(width/2, height/2);

  rotate(angle);
  scale(sca);
  rectMode(CENTER);
  noStroke();

  fill(grey);
  rect(x, y, darkbody, darkbody);

  fill(white);
  rect(x, y+60, whitebodyW, whitebodyH);

  fill(grey);
  rect(x, y-120, foreheadW, foreheadH);

  fill(yellow);
  rect(x, y-10, foreheadW, square*2);
  rect(x-50, y-22, square, square);
  rect(x+50, y-22, square, square);

  fill(black);
  rect(x-80, y-90, square, square*2);
  rect(x+80, y-90, square, square*2);

  fill(black);
  rect(x-220, y+20, wingW, wingH);
  rect(x+220, y+20, wingW, wingH);

  fill(yellow);
  rect(x-120, y+255, footW, footH);
  rect(x+120, y+255, footW, footH);
}
