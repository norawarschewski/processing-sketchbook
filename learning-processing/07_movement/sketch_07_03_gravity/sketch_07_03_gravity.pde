//DECLARE
Circle[] circleParty = new Circle[3];

void setup() {
  size(900, 900);
  smooth();

  //INTIALIZE
  for ( int i = 0; i < circleParty.length; i++) {
    circleParty[i] = new Circle(random(0, width), random(0, height));
  }
}


void draw() {
  background(255);

  //CALL FUNCTIONALITY
  for ( int i = 0; i < circleParty.length; i++) {
    circleParty[i].run();
  }
}


class Circle {
  //GLOBAL VARIABLES
  float x = 0;
  float y = 0;
  float speedX = 2;
  float speedY = 2;


  //CONSTRUCTOR
  Circle(float _x, float _y) {

    x = _x;
    y = _y;
  }

  //FUNCTIONS
  void run() {
    display();
    move();
    bounce();
    gravity();
    mouseMoved();
  }
  void gravity() {
    speedY += 0.2;
  }

  void bounce() {
    if (x > width) {
      speedX = speedX *  -1;
    }
    if (x < 0) {
      speedX = speedX * -1;
    }
    if (y > height) {
      speedY = speedY * -1;
    }
    if (y < 0) {
      speedY = speedY * -1;
    }
  }

  void move() {
    x +=speedX; 
    y += speedY;
  }

  void display() {
    fill(0);
    noStroke();
    ellipse(x, y, 100, 100);
  }
}
