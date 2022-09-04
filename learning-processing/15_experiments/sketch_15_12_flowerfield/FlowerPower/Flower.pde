// Even though there are multiple objects, only one class is needed. 
// No matter how many cookies you make, only one cookie cutter is needed.
class Flower { 
  int x;
  int y; 
  float flowerHeight; 
  int numDots; 
  int numDots2; 
  int numDots3; 
  int bodySize; 
  color yellow; 
  color green; 
  color orange;

  // The Constructor is defined with parameters.  
  Car(int tempX, int tempY, float tempFlowerHeight, int tempNumDots, int tempNumDots2, int tempNumDots3, int tempBodySize, color tempYellow, color tempGreen, color tempOrange) { 
    x = tempX;
    y = tempY; 
    flowerHeight = tempFlowerHeight; 
    numDots = tempNumDots; 
    numDots2 = tempNumDots2; 
    numDots3 = tempNumDots3;  
    bodySize = tempBodySize; 
    yellow = tempYellow; 
    green = tempGreen; 
    orange = tempOrange;
  }

  void display() {
    // stem
    rectMode(CENTER);
    noStroke();
    fill(green);
    rect(x, y+200, 4, flowerHeight);

    // body
    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, bodySize, bodySize);


    for (int a=0; a<360; a+=(360/numDots2)) {
      //dots around flower
      int dx = (int)(cos(radians(a))*50);
      int dy = (int)(sin(radians(a))*50);
      noStroke();
      fill(green);
      ellipse(x+dx, y+dy, 15, 15);
    }
    for (int a=0; a<360; a+=(360/numDots3)) {
      //dots around flower
      int dx = (int)(cos(radians(a))*70);
      int dy = (int)(sin(radians(a))*70);
      noStroke();
      fill(orange);
      ellipse(x+dx, y+dy, 18, 18);
    }
    for (int a=0; a<360; a+=(360/numDots)) {
      //dots around flower
      int dx = (int)(cos(radians(a))*70);
      int dy = (int)(sin(radians(a))*70);
      noStroke();
      fill(yellow);
      ellipse(x+dx, y+dy, 10, 10);
    }
  }
