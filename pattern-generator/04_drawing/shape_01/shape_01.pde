PShape alien;

void setup(){
  size(1080, 1080);
  
  // Load a file from the 'data' folder
  alien = loadShape("alien.svg");
  alien.disableStyle();
  
  // draw the shape from the center
  shapeMode(CENTER);
  
  noStroke();
  
  // Fill it RED with 100 transparancy
  fill(255, 0, 0, 100);
  background(255);
  
}

void draw(){
  if(mousePressed){
    shape(alien, mouseX, mouseY, 50, 50);
  }
}
