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
   
   color clr = catImage.get(x, y);
   fill(clr);
   
   float b = brightness(clr);
   float ellipseSize = map(b, 0, 255, 10, 80);
   
   ellipse(x, y, ellipseSize, ellipseSize);  
  }
  
}
