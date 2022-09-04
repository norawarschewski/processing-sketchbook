color yellow = #edb650;
color blue = #c5e1e8;

void setup(){ 
  size(1000,1000);
  background(blue);
  for (int i=1000; i>1;i=i-10){
    stroke(yellow);
    strokeWeight(1);
    fill(0, 0);
    ellipse(0,500,i,i); 
  }
  for (int i=1000; i>1;i=i-10){
    stroke(yellow);
    strokeWeight(1);
    fill(0, 0);
    ellipse(1000,500,i,i); 
  }
  for (int i=1000; i>1;i=i-10){
    stroke(yellow);
    strokeWeight(1);
    fill(0, 0);
    ellipse(500,0,i,i); 
  }
  for (int i=1000; i>1;i=i-10){
    stroke(yellow);
    strokeWeight(1);
    fill(0, 0);
    ellipse(500,1000,i,i); 
  }
}
