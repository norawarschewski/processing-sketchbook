PImage church;
int gridSize = 10;

void setup(){
  size(1080, 1080);
  church = loadImage("church.png");
  
  // we make it as big as the sketch itself:
  church.resize(width, height);
  
  noStroke();  
  background(255);
  noLoop();
  
  fill(0);
    
}

void draw(){
  
  // We draw a grid:
  for(int y = 0; y < height; y+=gridSize){
    for(int x = 0; x < width; x+=gridSize){
      
      // Position for every circle (we draw circles from the middle):
      int circleX = x + round(gridSize/2);
      int circleY = y + round(gridSize/2);
      
      // we get the brightness of the pixeL:
      float b = brightness(church.get(circleX, circleY));
      
      // We MAP the value of b (0-255) to a value between 0 and gridSize):
      float circleSize = map(b, 0, 255, gridSize, 0);
      
      ellipse(circleX, circleY, circleSize, circleSize);
    }
  }
  
}
