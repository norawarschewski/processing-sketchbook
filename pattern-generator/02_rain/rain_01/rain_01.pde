int numberOfDrops = 100;

// Let's use a variable to calculate how far apart we will place the shapes
float step;

float fallSpeed = 4;
float positionY = 0;

void setup(){
  size(1080, 1080);
  
  // we calculate how we can place all circles next to each other.
  step = float(width)/numberOfDrops;  
  stroke(255);
  fill(0);
  
}

void draw(){
  
  background(20);
  
  
  
  // We use a for loop to go through the array:
  for(int i = 0; i < numberOfDrops; i++){
    
    // we can calculate the x by using the i(ndex):
    // 0 * 10.8 = 0;
    // 1 * 10.8 = 10.8;
    // 2 * 10.8 = 21.6;
    // etc;
    // we also add half of the width of the cirlce, because it is drawn from the middle:
    float x = i*step + step/2; 
    
    ellipse(x, positionY, step, step);
     
  }
  
  // Increase the Y position with the speed
  positionY += fallSpeed;
  
}
