color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  background(bg);
  smooth();
  frameRate(25);
}

void draw() {
  background(bg);
  translate(width/2, height/2);

  int amount = 11;
  float s = 0;
  noStroke();
  rectMode(CENTER);
  for (int i = 0; i < amount; i = i + 1) {
    float wave1 = tan(radians(frameCount + i * 550)) * 400;
    //float wave2 = sin(radians(frameCount + i * 5)) * 150;
    push();
    translate(0, 0);
    //rotate(degrees(45));
    if (mousePressed == true) {
      s = random(-150,150);
    } else {
      fill(255);
    }
    
    if (i % 5 == 0) {
      rect(wave1, 0+s, 50, 50);
    } else {
      ellipse(wave1, 0+s, 50, 50);
    }
    pop();
  }

  rec();
}
