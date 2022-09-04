PImage hm;
int xstep = 5;
int max_height = 60;
 
void setup() {
  size(1000, 1000, P3D);
  background(0);
  fill(255);
  textSize(170);
  textAlign(CENTER);
  textLeading(170);
  text("Raised Text", width/2, height/2);
  filter(BLUR, 8);
  hm = get();
}
 
void draw() {
  background(0);
  strokeWeight(2);
  stroke(255);
  float b, z, px, pz;
  translate(width/2, height/2,-20);
  rotateY(map(mouseX,0,width,-PI,PI));
  rotateX(map(mouseY,0,height,-PI,PI));
 
  translate(-width/2, -height/2);
  for (int y = 50; y < height; y+=6) {
    px = -1;
    pz = 0;
    for (int x = 0; x < width; x+=xstep) {
      b = brightness(hm.get(x,y));
      z = map(b, 0, 200, 0, max_height);
      //stroke(color(b));
      line(px, y, pz, x, y, z);
      px = x;
      pz = z;
    }
  }
}
