ArrayList<Walker> walkers; 
void setup() {
  size(900, 900); 
  background(#f1f1f1);
  walkers = new ArrayList<Walker>();
  for (int i = 0; i < 20; i++) {
    walkers.add(new Walker());
  }
}
void draw() {
  translate(width/2, height/2);
  rotate(radians(frameCount));
  for (int j = 0; j < 10; j++) {
    for (int i = 0; i < walkers.size(); i++) {
      Walker w = walkers.get(i);
      w.walk();
      w.display();
    }
  }
}

class Walker {
  float x;
  float y;
  Walker() {
    x = 0;
    y = 0;
  }
  void walk() {
    x = x + random(-1, 1); 
    y = y + random(-1, 1);
  }
  void display() {
    fill(0);
    noStroke();
    //strokeWeight(0.001);
    ellipse(x,y,1,1);
  }
}
