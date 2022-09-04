void setup() {
  size(750,500);
  PImage myImage = loadImage("pexels-dsd-689777.jpg"); 
  background(255);
  int widthNewPixel=5;
  int heightNewPixel=5;
  float size=15;
  for (int x=0; x<width; x=x+widthNewPixel) { // loop for width
    for (int y=0; y<height; y=y+heightNewPixel) { // loop for height
      color c = myImage.get(x, y); // get colour at pos x and y from img
      float b = brightness(c); 
      stroke(0);
      if (b<180) {
        fill(b);
        rect(x, y, size+10, size+10);
      } 
      else if (b>180) {
        fill(c);
        ellipse(x, y, size-10, size-10);
      }
      else if (b>180) {
        fill(c);
        ellipse(x, y, size-10, size-10);
      }
    }
  }
}
