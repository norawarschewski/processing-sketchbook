float gridSize;
PShape[] shapes = new PShape[11];
color[] foregrounds = {
  #000000,
  #000000,
  #000000,
  #000000
};
PImage source;

void setup() {
  size(1080, 1080);
  noStroke();

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

  source = loadImage("test.png");
  source.resize(1080, 1080);

  for (int i = 1; i < shapes.length; i++) {
    shapes[i].disableStyle();
  }
}

void draw() {
  //  int columns = int(random(2, 100));
  int columns = 80;

  gridSize = float(width)/columns;

  for (int j = 0; j < columns; j++) {
    for (int i = 0; i < columns; i++) {

      float x = j*gridSize;
      float y = i*gridSize;

      int xPosition = round(x+gridSize/2);
      int yPosition = round(y+gridSize/2);

      color clr = source.get(xPosition, yPosition);

      float b = brightness(clr);

      fill(255);
      rect(x, y, gridSize, gridSize);
      if (b < 10) {
        // Random foreground color and shape:
        PShape shp = shapes[floor(random(shapes.length))];
        fill(foregrounds[floor(random(foregrounds.length))]);
        shape(shp, x, y, gridSize, gridSize);
      }
    }
  }

  noLoop();
}
