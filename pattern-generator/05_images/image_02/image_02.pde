PImage img;

void setup(){
  size(1280, 1080);
  img = loadImage("img.jpg");
  noStroke();
  
  imageMode(CENTER);
  background(0);
  
}

void draw(){
  // we don't do anything in draw
}

void mousePressed(){
  // Every time the mouse gets pressed we do this:
  image(img, mouseX, mouseY, 270, 213);
}
