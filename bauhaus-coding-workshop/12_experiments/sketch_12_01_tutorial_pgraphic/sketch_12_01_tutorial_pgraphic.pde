PGraphics pg;

void setup() {
  size(900, 900, P3D);
  pg = createGraphics(586, 810);
  frameRate(30);
}

void draw() {
  background(0);
  pg.beginDraw();
  pg.background(#f1f1f1);
  pg.rect(pg.width/2, pg.height/2, pg.width/2, pg.height/2);
  //without pg it stores the size size and not the pg.size
  //for loop can just be used without pg in front
  pg.endDraw();
  imageMode(CENTER);
  push();
  translate(width/2, height/2);
  rotateY(radians(frameCount));
  image(pg, 0, 0);
  pop();
}
