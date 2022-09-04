color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

float x;
float y;
float xspeed = 3;
float yspeed = 1;

void setup() {
  size(1000, 1000);
  drawPenguin(); // calls penguin
}

void draw() {
  background(blue);
  
  x = x + xspeed;
  y = y + yspeed;
  
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }

  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  
  drawPenguin(); // calls penguin
}
