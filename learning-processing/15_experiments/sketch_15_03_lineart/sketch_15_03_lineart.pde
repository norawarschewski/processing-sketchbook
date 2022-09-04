Circle c;
Circle[] circ = new Circle[3];

int lim = 700;

void setup() {

  size(900, 900);
  background(#f1f1f1);

  for (int i = 0; i < circ.length; i++) {
    circ[i] = new Circle(i, circ);
  }
}

void draw() {
  for (Circle circ : circ) {
    circ.display();
    circ.smove();
    circ.rever();
    circ.col();
  }
}

class Circle {
  float x = width/2;
  float y = height/2;
  float cr = random(40, 80);
  float vx = random(-5, 5);
  float vy = random(-5, 5);
  int id;
  int counter = 0;

  Circle [] others;

  Circle(int id, Circle [] others) {
    this.id = id;
    this.others = others;
  }

  void display() {
    noStroke();
    noFill();
    strokeWeight(1);
    ellipse(x, y, cr, cr);
  }

  void smove() {
    x = x + vx;
    y = y + vy;
  }

  void rever() {
    if (dist(width/2, height/2, this.x, this.y) >= 310) {
      this.vx = random(-1, 1);
      this.vy = random(-1, 1);
    }

    if (dist(width/2, height/2, this.x, this.y) >= 320) {
      this.x = width/2;
      this.y = height/2;
    }
  }

  void col() {

    int k = id + 1;
    for (int i = k; i < others.length; i++) {

      float bx = others[i].x;
      float by = others[i].y;
      float dx = bx-x;
      float dy = by-y;

      float dis = sqrt(dx*dx+dy*dy);
      float md = (float)others[i].cr+(float)cr;

      if (counter > 200) {
        if (dis <= md+700) {
          stroke(0, 1);
          strokeWeight(1);
          line(others[i].x, others[i].y, x, y);
        }
      }
    }
    counter++;
  }
}
