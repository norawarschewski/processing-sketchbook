color bg=0; 
color fg=#f1f1f1; 
float angle1; 
float angle2; 
float x1, y1; 
float x2 = 500, y2 = 500; 
float d1 = 200, d2 = 200; 
float d3 = 50, d4 = 50; 
float x3 = 500, y3 = 500; 
float i=1;   
void setup() {     
  size(1000, 1000);   
  frameRate(60);   
  ellipseMode(CENTER);
}   
void draw() {     
  background(bg);   
  fill(fg);   
  noStroke();   
  ellipse(x1, y1, d1, d2);//the circle in the center   
  x1 = 500 + 20*cos(angle1);   
  y1 = 500 + 20*sin(angle2);   
  d1 = lerp(d1, i*(200 + 10*sin(angle2)), 0.03);//the circle will move like a blob   
  d2 = lerp(d2, i*(200 + 10*cos(angle1)), 0.03);     
  angle1 += 0.02;   
  angle2 += 0.03;     
  ellipse(x2, y2, d3, d4);//the circle after mouse click   
  x2 = lerp(x2, x3, 0.03);//the circle moves to the circle in the center  
  y2 = lerp(y2, y3, 0.03);   
  d3 = lerp(d3, d3+5*i, 0.03);//the circle increase size after each mouse click   
  d4 = lerp(d3, d3+5*i, 0.03);
}     
void mouseClicked() {   
  x2 = mouseX;   
  y2 = mouseY;   
  i = i*1.1;
}
