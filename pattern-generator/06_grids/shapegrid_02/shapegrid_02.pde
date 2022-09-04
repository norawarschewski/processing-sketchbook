int colums = 24;
float gridSize;

PShape[] shapes = new PShape[8];

color[] backgrounds = {
  #96CEB4,
  #FFEEAD,
  #D9534F,
  #FFAD60
};

color[] foregrounds = {
  #4C0027,
  #570530,
  #750550,
  #980F5A
};

void setup(){
  size(1080, 1080);
  noStroke();
  
  gridSize = float(width)/colums;
   
  // Load shapes:
  shapes[0] = loadShape("triangle_1.svg");
  shapes[1] = loadShape("triangle_2.svg");
  shapes[2] = loadShape("triangle_3.svg");
  shapes[3] = loadShape("triangle_4.svg");
  
  shapes[4] = loadShape("line_1.svg");
  shapes[5] = loadShape("line_2.svg");
  shapes[6] = loadShape("line_3.svg");
  shapes[7] = loadShape("line_4.svg");
  
  // Disable SVG styling for every shapee so we can use Processing styling:
  for(int i = 1; i < shapes.length; i++){
    shapes[i].disableStyle();
  }
  
  
}

void draw(){
  for(int j = 0; j < colums; j++){
    for(int i = 0; i < colums; i++){
      
      float x = j*gridSize;
      float y = i*gridSize;
            
      // Random background color:
      fill(backgrounds[floor(random(backgrounds.length))]);
      rect(x, y, gridSize, gridSize);
      
      // Random foreground color and shape:
      PShape shp = shapes[floor(random(shapes.length))];
      fill(foregrounds[floor(random(foregrounds.length))]);
      
      shape(shp, x, y, gridSize, gridSize);
      
    }
  }
  
  // Only draw once:
  noLoop();
  
}
