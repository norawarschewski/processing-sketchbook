class Flower {
  int x=100, y=200;

  void display () {
    color yellow = color(250, 200, 80);
    color orange = color(240, 150, 60);
    color green = color(170, 190, 125);
    color red = color(240,128,128);

    float bodySize = 100;

    // stem
    rectMode(CENTER);
    noStroke();
    fill(green);
    rect(x, y+200, 4, 400);

    // body
    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, bodySize, bodySize);
    
    // dots around the flower loops
    for (int a=0; a<360; a+=(360/5)) {
      //dots around flower
      int dx = (int)(cos(radians(a))*50);
      int dy = (int)(sin(radians(a))*50);
      noStroke();
      fill(orange);
      ellipse(x+dx, y+dy, 15, 15);
    }
    for (int a=0; a<360; a+=(360/10)) {
      //dots around flower
      int dx = (int)(cos(radians(a))*70);
      int dy = (int)(sin(radians(a))*70);
      noStroke();
      fill(red);
      ellipse(x+dx, y+dy, 18, 18);
    }
    for (int a=0; a<360; a+=(360/10)) {
      //dots around flower
      int dx = (int)(cos(radians(a))*70);
      int dy = (int)(sin(radians(a))*70);
      noStroke();
      fill(yellow);
      ellipse(x+dx, y+dy, 10, 10);
    }
  }
}
