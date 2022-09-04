PImage img; 

void setup() {
  size(750, 500); 
  background(255);
  img = loadImage("pexels-dsd-689777.jpg");
}

void draw() {
  background(255);
  fill(0);
  noStroke();
  float ratio = float(height)/float(width);
  float tilesX = map(mouseX, 0, width, 10, 100);
  float tilesY = ratio * tilesX;
  float tileSize = width / tilesX;
  for (int y = 0; y < img.height; y += tileSize) {
    for (int x = 0; x < img.width; x += tileSize) {
      color c = img.get(x, y);
      float b = map(brightness(c), 0, 255, 1, 0);
      
      pushMatrix();
      translate(x, y);
      rect(0, 0, b * tileSize, b * tileSize);
      popMatrix();
    }
  }
}
