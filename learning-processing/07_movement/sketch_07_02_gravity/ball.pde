class Ball {
  color c;
  float x;
  float y;
  float speed;
  float gravity;
  float size;

  Ball(color tempC, float tempX, float tempY, float tempSpeed, float tempGravity, float tempSize) {
    c = tempC;
    x = tempX;
    y = tempY;
    speed = tempSpeed;
    gravity = tempGravity;
    size = tempSize;
  } 

  void display() {
    fill(c); 
    noStroke();
    ellipse(x, y, size, size);
  }

  void speed() {
    y = y + speed; 
    if (y > height) {
      speed = speed * - 0.95;
      y = height;
    }
  }

  void gravity() {
    speed = speed + gravity;
  }
}
