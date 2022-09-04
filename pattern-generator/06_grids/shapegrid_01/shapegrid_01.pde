int num = 10;
float gridSize;
int[] gridShapes;

PShape[] shapes = new PShape[9];

void setup(){
  size(1080, 1080);
  gridSize = float(width)/num;
  noStroke();
  
  gridShapes = new int[num*num];
  
  for(int i = 1; i < shapes.length; i++){
    shapes[i] = loadShape(i+".svg");
    shapes[i].disableStyle();
  }
  
  fill(255);
  
  frameRate(20);
  
}

void draw(){
  background(0);
  for(int j = 0; j < num; j++){
    for(int i = 0; i < num; i++){
      
      float x = i * gridSize;
      float y = j * gridSize;
      
      int index = j*num+i;
      
      if(mouseX > x && mouseX < x+gridSize && mouseY > y && mouseY < y+gridSize){
        gridShapes[index]++;
        if(gridShapes[index] >= shapes.length){
           gridShapes[index] = 1;
        }
      }
      
      if(gridShapes[index] > 0){
        shape(shapes[gridShapes[index]], x, y, gridSize, gridSize);
      }
      
    }
  }
}
