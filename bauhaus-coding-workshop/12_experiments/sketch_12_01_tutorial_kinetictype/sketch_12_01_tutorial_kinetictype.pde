PFont font;
PGraphics pg;

void setup() {
  font = createFont("IBMPlexSansHebrew-Bold.otf", 600);
  size(900, 900, P2D);
  pg = createGraphics(900, 900, P2D);
  frameRate(30);
}

void draw() {
  background(0);

  // PGraphics 

  pg.beginDraw();
  pg.background(#f1f1f1);
  pg.fill(0);
  pg.textFont(font);
  pg.textSize(600);
  pg.pushMatrix();
  pg.translate(width/2, height/2-50);
  pg.textAlign(CENTER, CENTER);
  pg.text("א", 0, 0);
  pg.popMatrix();
  pg.endDraw();

  int tilesX = 50;
  int tilesY = 50;

  int tileW = int(width/tilesX);
  int tileH = int(height/tilesY);

  for (int y = 0; y < tilesY; y++) {
    for (int x = 0; x < tilesX; x++) {

      // WARP
      int wave = int(sin(frameCount * 0.05 + ( x * y ) * 0.07) * 70);
      int wave2 = int(cos(frameCount * 0.09 - ( x * y ) * 0.07) * 70);
      // SOURCE
      int sx = x*tileW + wave;
      int sy = y*tileH ;
      int sw = tileW;
      int sh = tileH;


      // DESTINATION
      int dx = x*tileW;
      int dy = y*tileH;
      int dw = tileW;
      int dh = tileH;

      copy(pg, sx, sy, sw, sh, dx, dy, dw, dh);
    }
  }
}
