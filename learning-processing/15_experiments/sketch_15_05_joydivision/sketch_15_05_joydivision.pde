// dust and dirt 
Dustndirt dustndirt;

// global variables
color bg = #000000;
color fg = #f1f1f1;
int posX;
float f = 0;

void setup() {

  dustndirt = new Dustndirt ();

  size(900, 900);
  background(bg);
  smooth();
}

void draw() {
  // code 
  f++;
  background(0); 
  fill(0);
  stroke(255);
  strokeWeight(1);
  for (int y = 100; y < height-100; y += 10) {
    beginShape();
    for (posX = 100; posX < height-100; posX++) {
      float posY = y - 90.0 / (2.0 + pow(posX - 450.0, 4.0) / 8e6) * noise(posX / 30.0 + f / 50.0 + y);
      vertex(posX, posY);
    }
    endShape();
  }

  // dust and dirt 
  dustndirt.display();

  // video export
  rec();

  // image export
  //saveFrame("output/NAME-######.png");
  //if (frameCount == 50) {
  //  exit();
  //}
}
