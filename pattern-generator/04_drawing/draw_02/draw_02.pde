void setup(){
  size(1080, 1080);
      
  background(100);
    
}

void draw(){
  
  if(mousePressed){
    ellipse(mouseX, mouseY, random(10, 40),  random(10, 40));  
  }
  
}
