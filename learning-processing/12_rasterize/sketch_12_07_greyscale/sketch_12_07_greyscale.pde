void setup() {
  size(750,500);
  PImage myImage = loadImage("pexels-dsd-689777.jpg"); 
  stroke(0);
  int widthNewPixel=5;
  int heightNewPixel=5;
  for (int x=0; x<width; x=x+widthNewPixel) { // loop for width
    for (int y=0; y<height; y=y+heightNewPixel) { // loop for height
      color c = myImage.get(x,y); // get colour at pos x and y from img
      float b = brightness(c); 
      noStroke();
      rect(x, y, b/50, b/50); // devide b to decrease size 
    }
  }
}
