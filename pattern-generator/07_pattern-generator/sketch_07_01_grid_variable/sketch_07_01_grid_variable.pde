import processing.pdf.*;

float gridSize;

PShape[] shapes = new PShape[11];

color[] foregrounds = {
  #3F3244,
  #426a5a,
  #7fb685,
  #000000
};

PGraphics pdf;


void setup() {
  size(1000, 1000);
  noStroke();
  background(255);

  //pdf = createGraphics(width, height, PDF, year()+"-"+month()+"-"+day()+"_"+hour()+"-"+minute()+"-"+second()+".pdf");
  //pdf.beginDraw();
  //pdf.noStroke();
  //pdf.fill(255);

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
}

void draw() {
  background(255);
  int columns = int(random(2, 100));
  gridSize = float(width)/columns;

  for (int j = 0; j < columns; j++) {
    for (int i = 0; i < columns; i++) {

      float x = j*gridSize;
      float y = i*gridSize;

      //fill(#f1f1f1);
      //rect(x, y, gridSize, gridSize);

      // Random foreground color and shape:
      PShape shp = shapes[floor(random(shapes.length))];
      fill(foregrounds[floor(random(foregrounds.length))]);

      shape(shp, x, y, gridSize, gridSize);
    }
  }
  //pdf.dispose();
  //pdf.endDraw();
  noLoop();

  saveFrame("output/pattern-######.png");

  if (frameCount == 20) {
    exit();
  }
}

void mousePressed() {
  loop();
}
