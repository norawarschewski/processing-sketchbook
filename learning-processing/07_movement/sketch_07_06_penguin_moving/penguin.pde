void drawPenguin() {
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

  translate(width/2, height/2);

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
