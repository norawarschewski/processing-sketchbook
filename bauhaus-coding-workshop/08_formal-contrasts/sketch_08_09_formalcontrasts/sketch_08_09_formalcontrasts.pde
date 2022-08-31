void setup() {
  size(900, 900);
}
void draw() {
  background(0); 
  translate(width/2, height/2);
  float a = tan(radians(frameCount)) * 100;
  ellipse(a, 0, 50, 50);
}
