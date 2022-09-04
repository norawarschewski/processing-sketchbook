PImage catImage;

void setup(){
  size(1080, 1080);
  catImage = loadImage("cat.png");
  
  // we make it as big as the sketch itself:
  catImage.resize(width, height);
  
  noStroke();
    
}

void draw(){
  
  // we take a random position (it has to be whole number):
  int x = int(random(0, width));
  int y = int(random(0, height));
  
  // We check the image and get the color from that specific pixel at that location:
  color clr = catImage.get(x, y);
  
  // we set the picked color as our fill color:
  fill(clr);
  
  // and draw a cirlce at the location we picked:
  ellipse(x, y, 50, 50);
  
}
