color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

float x = 0;
float y = 0;

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
}

void draw() {
  background(blue);

  // string behind penguin
  stroke(yellow);
  strokeWeight(5);
  line(mouseX, mouseY, width/2, height/2);

  rectMode(CENTER);
  noStroke();

  fill(grey);
  rect(mouseX, mouseY, darkbody, darkbody);

  fill(white);
  rect(mouseX, mouseY+60, whitebodyW, whitebodyH);

  fill(grey);
  rect(mouseX, mouseY-120, foreheadW, foreheadH);

  fill(yellow);
  rect(mouseX, mouseY-10, foreheadW, square*2);
  rect(mouseX-50, mouseY-22, square, square);
  rect(mouseX+50, mouseY-22, square, square);

  fill(black);
  rect(mouseX-80, mouseY-90, square, square*2);
  rect(mouseX+80, mouseY-90, square, square*2);

  fill(black);
  rect(mouseX-220, mouseY+20, wingW, wingH);
  rect(mouseX+220, mouseY+20, wingW, wingH);

  fill(yellow);
  rect(mouseX-120, mouseY+255, footW, footH);
  rect(mouseX+120, mouseY+255, footW, footH);

  //fill(#f80000);
  //ellipseMode(CENTER);
  //ellipse(0, 0, 10, 10);
}
