color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

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
  size(800, 800);
  background(blue);
  int x=400, y=400;

  for (float i=1; i<80; i=i+1) {
    // start at 1 and count to 79 by 1
    
    scale(0.99); // scale down
    int dx = (int)random(-40,40); // added randomness 

    push();
    rectMode(CENTER);
    noStroke();

    fill(grey);
    rect(x+dx, y, darkbody, darkbody);

    fill(white);
    rect(x+dx, y+60, whitebodyW, whitebodyH);

    fill(grey);
    rect(x+dx, y-120, foreheadW, foreheadH);

    fill(yellow);
    rect(x+dx, y-10, foreheadW, square*2);
    rect(x+dx-50, y-22, square, square);
    rect(x+dx+50, y-22, square, square);

    fill(black);
    rect(x+dx-80, y-90, square, square*2);
    rect(x+dx+80, y-90, square, square*2);

    fill(black);
    rect(x+dx-220, y+20, wingW, wingH);
    rect(x+dx+220, y+20, wingW, wingH);

    fill(yellow);
    rect(x+dx-120, y+255, footW, footH);
    rect(x+dx+120, y+255, footW, footH);
    pop();
  }
}