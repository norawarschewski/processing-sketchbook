color bg = #000000;
color fg = #f1f1f1;
float rotation=0;
float rotationSpeed =0;

void setup() {
  size(900, 900);
  background(fg);
}

void draw() {
  background(fg); 
  rectMode(CENTER);

  rotationSpeed = tan(frameCount/1000.0) * 0.05;
  rotation += rotationSpeed;

  translate(width/2, height/2);
  rotate(rotation);

  fill(bg);
  rect(0, 0, 400, 10);

  rec();
}
