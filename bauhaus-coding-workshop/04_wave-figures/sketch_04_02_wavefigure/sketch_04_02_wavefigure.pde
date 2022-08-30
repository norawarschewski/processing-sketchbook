color bg = #000000;
color fg = #f1f1f1;
float x = 0;

void setup() {
  size(900, 900);
  background(bg);
  smooth();
  frameRate(15);
}

void draw() {
  background(bg); 
  translate(width/2, height/2);

  float amount = 40;
  float magnitude = 100;

  stroke(fg);
  strokeWeight(2); 

  for (int i = 0; i < amount; i++) {
    float wave1 = cos(radians(frameCount + i-50))+magnitude;
    float wave2 = sin(radians(frameCount + i-50))+magnitude;
  
    rotate(radians(frameCount - 5));
    line(wave1, wave2, 10, 10);
    
    wave2 += wave1;
  }
}
