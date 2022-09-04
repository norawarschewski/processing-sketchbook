color yellow = #edb650;
color blue = #c5e1e8;
float size = 100;

int x;
int y;
int a;
int i;

void setup() {
  size(1000, 1000);
  background(blue);

  // loops circular
  for (int i=0; i<360; i=i+40) {
    int x = (int)(cos(radians(i))*90)+width/2;
    int y = (int)(sin(radians(i))*90)+height/2;

    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, size, size);
  }
  
  for (int i=0; i<360; i=i+40) {
    int x = (int)(cos(radians(i))*220)+width/2;
    int y = (int)(sin(radians(i))*220)+height/2;

    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, size, size);
  }
  
  for (int i=0; i<360; i=i+40) {
    int x = (int)(cos(radians(i))*350)+width/2;
    int y = (int)(sin(radians(i))*350)+height/2;

    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, size, size);
  }
  
  for (int i=0; i<360; i=i+40) {
    int x = (int)(cos(radians(i))*470)+width/2;
    int y = (int)(sin(radians(i))*470)+height/2;

    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, size, size);
  }
  
  for (int i=0; i<360; i=i+40) {
    int x = (int)(cos(radians(i))*590)+width/2;
    int y = (int)(sin(radians(i))*590)+height/2;

    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, size, size);
  }
  
  for (int i=0; i<360; i=i+40) {
    int x = (int)(cos(radians(i))*720)+width/2;
    int y = (int)(sin(radians(i))*720)+height/2;

    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, size, size);
  }
  
}
