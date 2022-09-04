color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

float x;
float y;

float angle;

void setup() {
  size(1000, 1000);
  drawPenguin(); // calls penguin
}

void draw() {
  background(blue);
  drawPenguin(); // calls penguin

  fill(white);
  float x=400*cos(radians(angle));
  float y=400*sin(radians(angle));
  ellipse(x, y, 40, 40);

  fill(white);
  float x1=400*cos(radians(angle+45));
  float y1=400*sin(radians(angle+45));
  ellipse(x1, y1, 40, 40);

  fill(white);
  float x2=400*cos(radians(angle+90));
  float y2=400*sin(radians(angle+90));
  ellipse(x2, y2, 40, 40);

  fill(white);
  float x3=400*cos(radians(angle+135));
  float y3=400*sin(radians(angle+135));
  ellipse(x3, y3, 40, 40);

  fill(white);
  float x4=400*cos(radians(angle+180));
  float y4=400*sin(radians(angle+180));
  ellipse(x4, y4, 40, 40);

  fill(white);
  float x5=400*cos(radians(angle+225));
  float y5=400*sin(radians(angle+225));
  ellipse(x5, y5, 40, 40);

  fill(white);
  float x6=400*cos(radians(angle+270));
  float y6=400*sin(radians(angle+270));
  ellipse(x6, y6, 40, 40);

  fill(white);
  float x7=400*cos(radians(angle+315));
  float y7=400*sin(radians(angle+315));
  ellipse(x7, y7, 40, 40);

  angle++; // Increases the value of the variable angle.
}
