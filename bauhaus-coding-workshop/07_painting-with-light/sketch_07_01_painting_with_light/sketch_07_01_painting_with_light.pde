int[] xpos = new int[40];
int[] ypos = new int[40];

color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  noCursor();
  frameRate(30);
  // let's trace be visible longer

  // initialize all elements of each array to zero
  for (int i = 0; i < xpos.length; i ++ ) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw() {
  // code
  background(bg);

  // Shift array values
  for (int i = 0; i < xpos.length-1; i ++ ) {
    // shift all elements down one spot
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on.
    // stop at the second to last element
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }

  // new location
  // update the last spot in the array with the mouse location
  xpos[xpos.length-1] = mouseX-40;
  ypos[ypos.length-1] = mouseY-40;

  for (int i = 0; i < xpos.length; i ++ ) {
    // draw an ellipse for each element in the arrays.
    // color and size are tied to the loop's counter: i.
    noStroke();
    fill(fg, 50);
    ellipse(xpos[i], ypos[i], i, i);
  }
}
