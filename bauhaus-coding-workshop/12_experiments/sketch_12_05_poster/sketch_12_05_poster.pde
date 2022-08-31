PGraphics pg; 
PImage img;
PFont font;

color bg = #000000;
color fg = #f1f1f1;

float bright0 = 0; 
float bright1 = 0;
float bright2 = 0;
float bright3 = 0;
float w = 586;
float h = 405;
float amount = frameCount;
String txt = "פחות זה יותר";

float step = 360.0 / amount;

void setup() {
  size(900, 900);
  pg = createGraphics(586, 810);
  img = loadImage("gezer.jpg");
  font = createFont("SuisseIntl-Regular.otf", 1000);
  frameRate(30);
  //textFont(font);
}

void draw() {
  background(bg);
  fill(fg);
  textSize(80);
  float amount = frameCount;
  float step = 360.0 / amount;

  pg.beginDraw(); 
  pg.background(fg);
  pg.endDraw();

  imageMode(CENTER);
  push();
  translate(width/2, height/2);
  image(pg, 0, 0);
  pop();
  push();

  translate(width/2-250, height/2+450);

  for (int i = 0; i < amount; i++) {
    float rotation = step*i;
    push();
    fill(bg);
    rotate(radians(rotation + frameCount /2));
    text(txt, 80, 0);
    pop();
  }

  pop();

  push();
  translate(width/2-320, height/2-360);
  textSize(30);
  //textFont(font);
  fill(bg);
  text("TYPE IT THAT WAY", 40, 0);
  pop();

  rec();
}

//void draw() {
//  background(bg);
//  textFont(font);

//  float fontSize = 50;
//  float fontSizeHeb = 60;
//  float wave = sin(frameCount * 0.01) * 202.5;
//  float size = 80;




//  pg.beginDraw(); 
//  pg.background(fg);






//  pg.endDraw();

//  imageMode(CENTER);
//  push();
//  translate(width/2, height/2);
//  image(pg, 0, 0);
//  pop();

//  for (int i = 0; i < amount; i++) {
//    float rotation = step*i;
//    push();
//    rotate(radians(rotation + frameCount));
//    text(txt, 80, 0);
//    pop();
//  }

//rec();
//}
