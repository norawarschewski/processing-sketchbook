color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

float x;
float y;

void setup() {
  size(750, 500);
  PImage myImage = loadImage("pexels-dsd-689777.jpg");
  background(255);
  int widthNewPixel=5;
  int heightNewPixel=5;
  for (int x=0; x<width; x=x+widthNewPixel) { // loop for width
    for (int y=0; y<height; y=y+heightNewPixel) { // loop for height
      color c = myImage.get(x, y); // get colour at pos x and y from img
      float b = brightness(c);
      stroke(0);
      if (b<180) {
        drawPenguin(); // function to call penguin
      }
    }
  }
}

// function to draw Penguin
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
