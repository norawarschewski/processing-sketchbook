// x and y positions
int[] xpos = new int[100];
int[] ypos = new int[100];

void setup() {
  size(1080, 1080);
  smooth();
}

void draw() {
  
  background(255);
  
  for (int i = 0; i < xpos.length-1; i++) {
    
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  
  xpos[xpos.length-1] = mouseX;
  ypos[ypos.length-1] = mouseY;
  
  for (int i = 0; i < xpos.length; i++) {
    fill(0);
    //fill(255-i*(255.0/100.0));
    ellipse(xpos[i], ypos[i], i, i);
  }
  
}
