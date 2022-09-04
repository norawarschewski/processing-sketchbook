class Penguin {
  color darkGreen;
  color lightGreen;
  color white;
  color black;
  color red;
  color darkRed;
  float dotSize;
  float body;
  float freckles;
  float eye;
  float pupil;
  float mouthH;
  float mouthW;
  float tongueH;
  float tongueW;
  float toothOne;
  float toothTwo;
  float tongue;
  float x;
  float y;

  Penguin(float tempX, float tempY, color tempDarkGreen, color tempLightGreen, color tempWhite, color tempBlack, color tempRed, color tempDarkRed, float tempDotSize, float tempBody, float tempFreckles, float tempEye, float tempPupil, float tempMouthH, float tempMouthW, float tempTongueH, float tempTongueW, float tempToothOne, float tempToothTwo, float tempTongue) {
  x = tempX;
    y = tempY;
    darkGreen = tempDarkGreen;
    lightGreen = tempLightGreen;
    white = tempWhite;
    black = tempBlack;
    red = tempRed;
    darkRed = tempDarkRed;
    dotSize = tempDotSize;
    body = tempBody;
    freckles = tempFreckles;
    eye = tempEye;
    pupil = tempPupil;
    mouthH = tempMouthH;
    mouthW = tempMouthW;
    tongueH = tempTongueH;
    tongueW = tempTongueW;
    toothOne = tempToothOne;
    toothTwo = tempToothTwo;
    tongue = tempTongue;
  }

  void display() {
    ellipseMode(CENTER);
    fill(darkGreen);
    noStroke();
    ellipse(x, y, body, body);
    fill(white);
    ellipse(x, y-60, eye, eye);
    fill(black);
    ellipse(x, y-60, pupil, pupil);
    rectMode(CENTER);
    fill(black);
    rect(x, y+100, mouthW, mouthH);
    fill(red);
    rect(x, y+105, tongueW, tongueH);
    fill(white);
    triangle(x-70, y+90, x-10, y+90, x-40, y+toothOne);
    triangle(x-10, y+90, x+50, y+90, x+20, y+toothTwo);
    fill(lightGreen);
    noStroke();
    ellipse(x-125, y, freckles, freckles);
    ellipse(x-90, y+25, freckles, freckles);
    ellipse(x+100, y+15, freckles, freckles);
    ellipse(x+100, y+40, freckles, freckles);
    ellipse(x+145, y+20, freckles, freckles);
    ellipse(x-145, y+45, freckles, freckles);
    for (int a=0; a<360; a=a+40) {
      //dots around virus
      int dx = (int)(cos(radians(a))*300);
      int dy = (int)(sin(radians(a))*300);
      noStroke();
      fill(darkRed);
      ellipse(x+dx, y+dy, dotSize, dotSize);
    }
  }
}
