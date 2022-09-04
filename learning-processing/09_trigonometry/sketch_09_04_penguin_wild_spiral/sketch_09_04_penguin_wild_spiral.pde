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

int x;
int y;
int a;
int i;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(blue);
  translate(width/2, height/2);

  for (int i=0; i<500; i=i+2)
  {
    int x = (int)(i*cos(radians(2*i)));
    int y = (int)(i*sin(radians(2*i)));
    
    // penguin
    push();
    
    scale(0.2);
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

    pop();


    for (int b=0; b<360; b=b+10)
    {
      int dx2 = (int)(200*cos(radians(b)));
      int dy2 = (int)(200*sin(radians(b)));
      scale(1);

      noStroke();
      fill(yellow);
      ellipse(x+dx2, y+dy2, 5, 5);
    }
  }
}
