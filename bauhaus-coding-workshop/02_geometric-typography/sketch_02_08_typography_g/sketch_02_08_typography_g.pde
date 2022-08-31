color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
}

void draw() {
  background(bg);
  
  push();
  translate(width/2-550, height/2-550);
  noStroke();
  ellipseMode(CENTER);

  fill(fg);
  ellipse(530, 440, 180, 180);
  ellipse(530, 650, 200, 150);

  fill(bg);
  ellipse(530, 440, 70, 175);

  noFill();
  stroke(fg);
  strokeWeight(3);
  arc(515, 550, 50, 50, 0, HALF_PI+PI);

  rectMode(CENTER);
  noStroke();
  fill(fg);
  rect(600, 360, 70, 3);
  rect(590, 576, 160, 3);
  rect(600, 617, 60, 80);
  fill(bg);
  rect(530, 650, 85, 145, 50, 0, 50, 50);
  pop();
}

void keyPressed() {
  if (key == 's') {
    save("export.jpg");
    exit();
  }
}
