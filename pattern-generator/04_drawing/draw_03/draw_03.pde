PImage catImage;

void setup(){
  size(1080, 1080);
  catImage = loadImage("cat.png");
  
  // we make it as big as the sketch itself:
  catImage.resize(width, height);
    
  background(0);
    
}

void draw(){
  
 if(mousePressed){
   int x = round(mouseX);
   int y = round(mouseY);
   fill(catImage.get(x, y));
   ellipse(x, y, 40, 40);  
  }
  
}
