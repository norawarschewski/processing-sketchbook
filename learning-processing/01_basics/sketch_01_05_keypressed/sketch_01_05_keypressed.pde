float d_global = 30;

void setup() {
  size(800, 800);
  drawMeMyDiagonal(255, 0, 0, d_global); //r,g,b
}

void draw() {
  background(0);
  drawMeMyDiagonal(255, 0, 0, d_global); //r,g,b
}

void drawMeMyDiagonal(float r, float g, float b, float d) {
  fill(r, g, b);
  for (int i=0; i<width; i=i+53) {
    noStroke();
    rect (i, i, d, d);
  }
}

void keyPressed() {
  if (key=='i') {
    d_global=d_global+30; // increasing
  }
  if (key=='d') {
    d_global=d_global-10; // decreasing
  }
}
