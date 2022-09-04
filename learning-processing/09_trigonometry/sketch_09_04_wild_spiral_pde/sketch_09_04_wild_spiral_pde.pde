color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

float size = 100;

int x;
int y;
int a;
int i;

void setup(){
  size(800, 800);
}

void draw() {
  background(blue);

  for (int i=0; i<800; i=i+10)
  {
    int x = (int)(i*cos(radians(2*i)))+width/2; 
    int y = (int)(i*sin(radians(2*i)))+height/2;
    ellipseMode(CENTER);
    fill(yellow);
    noStroke();
    ellipse(x, y, size, size); 

    for (int b=0; b<360; b=b+40)
    {
      int dx2 = (int)(30*cos(radians(b))); 
      int dy2 = (int)(30*sin(radians(b))); 
      noStroke();
      fill(yellow);
      ellipse(x+dx2, y+dy2, 5, 5);
    }
  }
}
