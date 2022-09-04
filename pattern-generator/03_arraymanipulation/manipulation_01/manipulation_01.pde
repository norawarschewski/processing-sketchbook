float[] barHeights = new float[100];

float step;

void setup(){
  size(1080, 1080);
  
  stroke(50);
  fill(255, 0, 0);
  
  step = float(width)/barHeights.length;
  
  for(int i = 0; i < barHeights.length; i++){
    barHeights[i] = random(10, height-10);   
  }
  
  barHeights = sort(barHeights);
  barHeights = reverse(barHeights);
  
}

void draw(){
  
  background(20);
  
  for(int i = 0; i < barHeights.length; i++){
    float x = i*step; 
    rect(x, 0, step, barHeights[i]);
  } 
}
