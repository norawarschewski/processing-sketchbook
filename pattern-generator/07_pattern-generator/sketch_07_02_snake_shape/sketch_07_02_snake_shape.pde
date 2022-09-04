int[] xpos = new int[40];
int[] ypos = new int[40];
PShape[] shapes = new PShape[11];

void setup() {

  size(1080, 1080);
  frameRate(30);

  // Initialize all elements of each array to zero.
  for (int i = 0; i < xpos.length; i ++ ) {
    xpos[i] = 0;
    ypos[i] = 0;
  }

  // Load shapes:
  shapes[0] = loadShape("shape_01.svg");
  shapes[1] = loadShape("shape_02.svg");
  shapes[2] = loadShape("shape_03.svg");
  shapes[3] = loadShape("shape_04.svg");
  shapes[4] = loadShape("shape_05.svg");
  shapes[5] = loadShape("shape_06.svg");
  shapes[6] = loadShape("shape_07.svg");
  shapes[7] = loadShape("shape_08.svg");
  shapes[8] = loadShape("shape_09.svg");
  shapes[9] = loadShape("shape_10.svg");
  shapes[10] = loadShape("shape_11.svg");
  shapes[10] = loadShape("shape_12.svg");


  for (int i = 1; i < shapes.length; i++) {
    shapes[i].disableStyle();
  }
  
  noCursor();
}

void draw() {
  background(0);

  // Shift array values
  for (int i = 0; i < xpos.length-1; i ++ ) {
    // Shift all elements down one spot.
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on.
    // Stop at the second to last element.
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }

  // New location
  // Update the last spot in the array with the mouse location.
  xpos[xpos.length-1] = mouseX;
  ypos[ypos.length-1] = mouseY;

  for (int i = 0; i < xpos.length; i ++ ) {
    // Draw a shape for each element in the arrays.
    // Color and size are tied to the loop's counter: i.

    PShape shp = shapes[floor(random(shapes.length))];
    shapeMode(CENTER);
    noStroke();
    fill(255);
    shape(shp, xpos[i], ypos[i], i, i);
  }
}
