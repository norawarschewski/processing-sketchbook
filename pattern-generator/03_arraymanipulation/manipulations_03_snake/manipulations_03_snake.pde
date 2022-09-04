// x and y positions
int[] xpos = new int[30];
int[] ypos = new int[30];

int gridSize = 40;

void setup() {
  size(1080, 1080);
  smooth();
  noStroke();
  
  frameRate(15);
}

void draw() {
  
  background(255);
  
  // Shift array values — IMPORTANT< we NOT go through the whole array. We go up until the second last item!
  for (int i = 0; i < xpos.length-1; i++) {
    
    // We take over the position of the element that comes after us.
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  
  // New location added to the end of the array (so it will be drawn last, on top of everything).
  xpos[xpos.length-1] = round(mouseX/gridSize)*gridSize;
  ypos[ypos.length-1] = round(mouseY/gridSize)*gridSize;
  
  for (int i = 0; i < xpos.length; i++) {
    fill(0);
    rect(xpos[i], ypos[i], gridSize, gridSize);
  }
  
}
