color yellow = #edb650;
color blue = #c5e1e8;
int diameter = 30; 

void setup() {
  size(800, 800);
  background(yellow);
  for (int x=0; x< width; x=x+diameter) {
    for (int y=0; y<height; y=y+diameter) {
      stroke(0);
      strokeWeight(1);
      fill(random(255), random(0), random(0), 50);
      ellipse(x, y, diameter, diameter);
    }
  }
  for (int x=0; x< width; x=x+diameter) {
    for (int y=0; y<height; y=y+diameter) {
      stroke(random(255), random(0), random(0));
      strokeWeight(random(5));
      ellipse(x+15, y+15, diameter, diameter);
    }
  }
}
