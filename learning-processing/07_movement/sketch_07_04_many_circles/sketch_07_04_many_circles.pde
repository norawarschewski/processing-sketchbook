void setup() {
  size(800, 800);
  myBalls = new Ball[5000];
  for (int i=0; i<myBalls.length; i++) { // length = number of arrays
    myBalls[i]= new Ball();
    myBalls[i].x=(int)random(0, width); // randomize x
    myBalls[i].y=(int)random(0, height); // randomize y
    myBalls[i].speedX=(int)random(0,3); // randomize speedX
    myBalls[i].speedY=(int)random(0,2); // randomize speedY
  }
}

Ball[] myBalls;

void draw() {
  background(0);
  for (int i=0; i<myBalls.length; i++) {
    myBalls[i].drawMe();
  }
}

class Ball {
  int speedX=3, speedY=2, x=0, y=0;
  
  void drawMe() {
    x=x+speedX;    
    
    stroke(0);
    fill(255,0,0);
    ellipse(x, y, 5, 5);
    
    if (x>width) {
      speedX = speedX*-1;
    }
    if (x<0) {
      speedX=speedX*-1;
    }

    y=y+speedY;
    if (y>height || y<0) {
      speedY=speedY*-1;
    }
  }
}
