color bg = #000000;
color fg = #f1f1f1;
color primary = #ff9000;

void setup() { 
  size(900, 900);
  background(bg);
  frameRate(30);
}

void draw() {
  background(fg);
  
  noFill();
  stroke(bg);
  strokeWeight(5);
  strokeCap(SQUARE);
  float wave = sin(frameCount * 0.09) * 50;
  float wave2 = cos(frameCount * 0.09) * 50;
  for (int y=200; y<height-200; y=y+10) { // space between rect is 20
    line(width/2-300, y+wave, width/2+300, y);
  }
  for (int y=200; y<height-200; y=y+10) { // space between rect is 20
    line(150, y, width/2+300, y+wave);
  }
  for (int x=200; x<height-200; x=x+10) { // space between rect is 20
    line(x+wave2, height/2-300, x, height/2+300);
  }
  for (int x=200; x<height-200; x=x+10) { // space between rect is 20
    line(x, 150, x+wave2, height/2+300);
  }
  
  rectMode(CENTER);
  fill(bg);
  noStroke();
  rect(width/2,125, width, 250);
  rect(width/2,height-125, width, 250);
  rect(125,height/2,250,height);
  rect(width-125,height/2,250,height);

  //rectMode(CENTER);
  //noStroke();
  //fill(bg);
  //for (int y=100; y<height-100; y=y+15) { // space between rect is 20
  //  rect(width/2+225, y, 450, 5); // line in the middle of canvas
  //}

  

  //for (int y=200; y<height-50; y=y+15) { // space between rect is 20
  //  float wave = sin(frameCount * 0.009) * 410;
  //  rect(width/2, y+wave, 450, 5); // line in the middle of canvas
  //}



  // MOIRE CIRCLES
  //float wave = tan(frameCount * 0.009) * 100;

  //for (int i=450; i>1; i=i-20) {
  //  stroke(fg);
  //  strokeWeight(3);
  //  fill(0, 0);
  //  ellipse(0+wave, 450, i, i);
  //}
  //for (int i=450; i>1; i=i-20) {
  //  stroke(fg);
  //  strokeWeight(3);
  //  fill(0, 0);
  //  ellipse(900-wave, 450, i, i);
  //}

  //float wave = sin(frameCount * 0.09) * 10;
  //float wave1 = cos(frameCount * 0.09) * 10;
  //for (int i=450; i>1; i=i-20) {
  //  stroke(fg);
  //  strokeWeight(3);
  //  fill(0, 0);
  //  ellipse(450, 450, i, i);
  //}

  //translate(width/2-450, height/2);
  //float angle = 0;
  //rotate(angle);
  //for (int i=450; i>1; i=i-20) {
  //  stroke(fg);
  //  strokeWeight(3);
  //  fill(0, 0);
  //  ellipse(450+wave, 0+wave1, i, i);
  //  angle++;
  //}



  // MOIRE RECTANGLES
  //float wave = sin(frameCount * 0.009) * 360;
  //float w = 3;
  //float h = 350;
  //translate(width/2, height/2);
  //rectMode(CENTER);
  //fill(fg);
  //noStroke();
  //push();
  //rotate(radians(wave));
  //rect(-100, 0, w, h);
  //rect(-80, 0, w, h);
  //rect(-60, 0, w, h);
  //rect(-40, 0, w, h);
  //rect(-20, 0, w, h);
  //rect(0, 0, w, h);
  //rect(20, 0, w, h);
  //rect(40, 0, w, h);
  //rect(60, 0, w, h);
  //rect(80, 0, w, h);
  //rect(100, 0, w, h);
  //pop();
  //push();
  //rotate(radians(-wave));
  //rect(-100, 0, w, h);
  //rect(-80, 0, w, h);
  //rect(-60, 0, w, h);
  //rect(-40, 0, w, h);
  //rect(-20, 0, w, h);
  //rect(0, 0, w, h);
  //rect(20, 0, w, h);
  //rect(40, 0, w, h);
  //rect(60, 0, w, h);
  //rect(80, 0, w, h);
  //rect(100, 0, w, h);
  //pop();
  //push();
  //rotate(radians(wave/2));
  //rect(-100, 0, w, h);
  //rect(-80, 0, w, h);
  //rect(-60, 0, w, h);
  //rect(-40, 0, w, h);
  //rect(-20, 0, w, h);
  //rect(0, 0, w, h);
  //rect(20, 0, w, h);
  //rect(40, 0, w, h);
  //rect(60, 0, w, h);
  //rect(80, 0, w, h);
  //rect(100, 0, w, h);
  //pop();

  rec();
}
