PImage input;

void setup(){
  size(1080, 1080);
  input = loadImage("hsrw.png");
  
  // we make it as big as the sketch itself:
  input.resize(width, height);
  
  noStroke();
  
  background(0);
    
}

void draw(){
  
  if(mousePressed){
    int x = round(mouseX);
    int y = round(mouseY);
    
    float b = brightness(input.get(x, y));
    
    // If brighter than black:
    if(b > 1){
      fill(255);
      ellipse(x, y, 40, 40);
    } else {
      fill(255, 100);
      ellipse(x, y, 20, 20);
    }
  }
  
}
