PGraphics pg; 
PImage img;
PFont font;

color bg = #000000;
color fg = #f1f1f1;

void setup() {
  size(900, 900);
  pg = createGraphics(586, 810);
  img = loadImage("gezer.png");

  font = createFont("IBMPlexSans-Medium.otf", 200);
}

void draw() {
  background(bg);
  textFont(font);

  float fontSize = 145;
  float lineHeight = fontSize * 1.1;

  pg.beginDraw(); 
  pg.background(fg);
  pg.imageMode(CENTER);
  pg.image(img, pg.width/2, pg.height/2);
  pg.textSize(fontSize);
  pg.textAlign(LEFT, TOP);

  pg.fill(0);
  pg.text(text1.toUpperCase(), -frameCount, 0);

  pg.fill(0);
  pg.text(text2, frameCount*2-6750, lineHeight);

  pg.fill(0);
  pg.text(text3.toUpperCase(), -frameCount*3, lineHeight*2);

  pg.fill(0);
  pg.text(text4, frameCount*4-6750, lineHeight*3);

  pg.fill(0);
  pg.text(text5.toUpperCase(), -frameCount*5, lineHeight*4);

  pg.endDraw();

  imageMode(CENTER);
  push();
  translate(width/2, height/2);
  image(pg, 0, 0);
  pop();

  //rec();
}
