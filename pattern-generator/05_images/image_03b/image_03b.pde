PImage catImage;

void setup(){
  size(1080, 1080);
  catImage = loadImage("cat.png");
  
  // we make it as big as the sketch itself:
  catImage.resize(width, height);
  
  noStroke();
  
  background(0);
    
}

void draw(){
  
  for(int i = 0; i < 100; i++){
    int x = int(random(0, width));
    int y = int(random(0, height));
    
    color clr = catImage.get(x, y);
    fill(clr);
    
    ellipse(x, y, 10, 10);
  }
  
}
