color bg=0; 
color fg=#f1f1f1; 
float x1, y1, x2, y2; 
float angle1, angle2; 
float mouseY1; 
float i=0;     
void setup() {     
  size(1000, 1000);   
  frameRate(60);
}   
void draw() {   
  background(fg);   
  fill(bg);   
  stroke(bg);   
  strokeWeight(8);   
  strokeJoin(ROUND);   
  rect(0, 700, height, width);    
  println (mouseY);     
  x1 = lerp(x1, mouseX, 0.1);   
  y1 = lerp(y1, mouseY1+i, 0.1);   
  x2 = lerp(x2, x1, 0.1);   
  y2 = lerp(y2, x1, 0.1);    
  mouseY1=constrain(mouseY, 600, 1000);       
  fill(bg);     
  triangle(x1, y1, x2-50, 700, x2+50, 700);     
  triangle(x1+60, y1+10, x2+10, 700, x2+110, 700);     
  triangle(x1+110, y1+20, x2+60, 700, x2+140, 700);     
  triangle(x1+150, y1+35, x2+90, 700, x2+160, 700);     
  triangle(x1+180, y1+50, x2+115, 700, x2+180, 700);     
  triangle(x1+200, y1+70, x2+135, 700, x2+190, 700);     
  triangle(x1+210, y1+90, x2+150, 700, x2+200, 700);     
  triangle(x1-60, y1+10, x2-10, 700, x2-110, 700);     
  triangle(x1-110, y1+20, x2-60, 700, x2-140, 700);     
  triangle(x1-150, y1+35, x2-90, 700, x2-160, 700);     
  triangle(x1-180, y1+50, x2-110, 700, x2-180, 700);     
  triangle(x1-200, y1+70, x2-135, 700, x2-190, 700);     
  triangle(x1-210, y1+90, x2-150, 700, x2-200, 700);   
  if (mouseY<300) {     
    i=100;
  } else { 
    i=0;
  }
}
