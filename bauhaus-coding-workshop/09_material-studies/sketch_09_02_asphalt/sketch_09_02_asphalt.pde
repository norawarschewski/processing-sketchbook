color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
  noLoop();
}

void draw() {
  background(bg); 

  float diam=3;
  for (float x=0; x< width; x=x+1) {
    for (float y=0; y<height; y=y+1) {
      diam=int(random(1, 3)); // diameter changed randomly
      float c=0.500*random(10)+ 0.800*random(10)+0.900*random(100);
      fill(c);
      noStroke();
      ellipse(x, y, diam, diam);
    }
  }

  int varX = -70;
  int varY = 70; 

  push();
  translate(random(0, width), random(0, height));
  fill(bg,50);
  beginShape();
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,50);
  beginShape();
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,50);
  beginShape();
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,50);
  beginShape();
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,50);
  beginShape();
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,50);
  beginShape();
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  vertex(random(varX, varY), random(varX, varY));
  endShape();
  pop();
  
  int varrX = 10;
  int varrY = 150; 
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,95);
  beginShape();
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,90);
  beginShape();
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,90);
  beginShape();
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  endShape();
  pop();
  
  push();
  translate(random(0, width), random(0, height));
  fill(bg,90);
  beginShape();
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  vertex(random(varrX, varrY), random(varrX, varrY));
  endShape();
  pop();
}
