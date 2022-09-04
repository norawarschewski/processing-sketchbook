/**
Deplacement de parallaxe pour aller avec<br>
un "head tracking" inspire des demonstrations <br>
de <a href="http://www.cs.cmu.edu/~johnny/projects/wii/">Johnny Lee</a> sur la Wiimote.<br>
*/

void setup() {
  size(900, 700, P3D);
  frameRate(30);
}

void draw() {
  background(0);
  lights();
  //noFill();
  stroke(100);
  translate(width/2, height/2, 0); 
  float mouseReverse = (((float)mouseX-width/2)*-1)/10;
  rotateY(radians(mouseReverse));
  //rotateX(((float)mouseY-height/2)/500);
  float zoom = (float)mouseY-height/2;
  translate(0, 0, zoom);

  int gridSize = 1000;
  int gridUnitSize = 100;
  int numUnit = gridSize/100;
  pushMatrix();
  translate(-gridSize/2, -gridSize/2, 0); 
  rotateY(radians(90));
  for(int i=0; i<=numUnit; i++){
    line(i*gridUnitSize, 0, i*gridUnitSize, gridSize);
    for(int j=0; j<numUnit; j++){
      line(0, j*gridUnitSize, gridSize, j*gridUnitSize);
    }
  }
  popMatrix();
  pushMatrix();
  translate(gridSize/2, -gridSize/2, 0); 
  rotateY(radians(90));
  for(int i=0; i<=numUnit; i++){
    line(i*gridUnitSize, 0, i*gridUnitSize, gridSize);
    for(int j=0; j<numUnit; j++){
      line(0, j*gridUnitSize, gridSize, j*gridUnitSize);
    }
  }
  popMatrix();
  pushMatrix();
  translate(-gridSize/2, -gridSize/2, 0); 
  rotateY(radians(90));
  rotateX(radians(90));
  for(int i=0; i<=numUnit; i++){
    line(i*gridUnitSize, 0, i*gridUnitSize, gridSize);
    for(int j=0; j<numUnit; j++){
      line(0, j*gridUnitSize, gridSize, j*gridUnitSize);
    }
  }
  popMatrix();
  pushMatrix();
  translate(-gridSize/2, +gridSize/2, 0); 
  rotateY(radians(90));
  rotateX(radians(90));
  for(int i=0; i<=numUnit; i++){
    line(i*gridUnitSize, 0, i*gridUnitSize, gridSize);
    for(int j=0; j<numUnit; j++){
      line(0, j*gridUnitSize, gridSize, j*gridUnitSize);
    }
  }
  popMatrix();
  translate(0, 0, -10000);
  box(50);
  translate(0, 0, 10000);
  pushMatrix();
  translate(0, 0, 300);
  box(50);
  popMatrix();  
  pushMatrix();
  translate(0, 0, 150);
  box(50);
  popMatrix();
  pushMatrix();
  translate(0, 0, 0);
  box(50);
  popMatrix();
  pushMatrix();
  translate(0, 0, -150);
  box(50);
  popMatrix();
  pushMatrix();
  translate(0, 0, -300);
  box(50);
  popMatrix();
}
