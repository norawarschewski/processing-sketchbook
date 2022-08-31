color bg = #000000;
color fg = #f1f1f1;
float x = 0;
float y = 0;

void setup() {
  size(900, 900);
  background(bg);
}

void draw() {
  background(bg);
  for (int x=-450; x<width+800; x=x+105) {
    for (int y=-450; y<height+800; y=y+105) {
      push();
      translate(450, 0);
      rotate(PI/3.0);
      rectMode(CORNER);
      fill(255);
      noStroke();
      rect(x, y, 5, 45);
      rect(x+10, y, 5, 45);
      rect(x+20, y, 5, 45);
      rect(x+30, y, 5, 45);
      rect(x+40, y, 5, 45);

      rect(x+50, y+5, 50, 5);
      rect(x+50, y+15, 50, 5);
      rect(x+50, y+25, 50, 5);
      rect(x+50, y+35, 50, 5);
      rect(x+50, y+45, 50, 5);

      rect(x, y+55, 50, 5);
      rect(x, y+65, 50, 5);
      rect(x, y+75, 50, 5);
      rect(x, y+85, 50, 5);
      rect(x, y+95, 50, 5);

      rect(x+55, y+55, 5, 45);
      rect(x+65, y+55, 5, 45);
      rect(x+75, y+55, 5, 45);
      rect(x+85, y+55, 5, 45);
      rect(x+95, y+55, 5, 45);
      pop();
    }
  }
}
