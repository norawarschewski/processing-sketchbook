// We start with saying we want this arary, and how large it will be
float[] positionsY = new float[100];

// Let's use a variable to calculate how far apart we will place the shapes
float step;

float fallSpeed = 4;

void setup(){
  size(1080, 1080);
  
  step = float(width)/positionsY.length;  
  stroke(255);
  fill(0);
  
}

void draw(){
  
  background(20);
  
  // We use a for loop to go through the array:
  for(int i = 0; i < positionsY.length; i++){

    float x = i*step + step/2; 
    
    ellipse(x, positionsY[i], step, step);
    
    // Increase the Y position of every single drop with the speed
    positionsY[i] += fallSpeed;
    
    // Check if this drop reached the bottom
    if(positionsY[i] >= height+step){
      positionsY[i] = -step;
    }   
  } 
}
