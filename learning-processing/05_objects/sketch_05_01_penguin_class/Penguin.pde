class Penguin {
  float darkbody;
  float whitebodyW;
  float whitebodyH;
  float foreheadW;
  float foreheadH;
  float wingW;
  float wingH;
  float footW;
  float footH;
  float square;
  color grey;
  color white;
  color black;
  color yellow;
  color blue;
  float x;
  float y;


  Penguin(float tempX, float tempY, color tempgrey, color tempwhite, color tempblack, color tempyellow, color tempblue, float tempdarkbody, float tempwhitebodyW, float tempwhitebodyH, float tempforeheadW, float tempforeheadH, float tempwingW, float tempwingH, float tempfootW, float tempfootH, float tempsquare) {
    x = tempX;
    y = tempY;
    darkbody = tempdarkbody;
    whitebodyW = tempwhitebodyW;
    whitebodyH = tempwhitebodyH;
    foreheadW = tempforeheadW;
    foreheadH = tempforeheadH;
    wingW = tempwingW;
    wingH = tempwingH;
    footW = tempfootW;
    footH = tempfootH;
    square = tempsquare;
    grey = tempgrey;
    white = tempwhite;
    black = tempblack;
    yellow = tempyellow;
    blue = tempblue;
  }

  void display() {
    push();
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
  }
}
