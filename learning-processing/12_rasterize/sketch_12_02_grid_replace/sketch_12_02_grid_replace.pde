void setup() {
  size(738,415);
  PImage myImage = loadImage("pexels-dsd-689777.jpg"); 
  background(255);
  int widthNewPixel=15;
  int heightNewPixel=15;
  for (int x=0; x<width; x=x+widthNewPixel) { // loop for width
    for (int y=0; y<height; y=y+heightNewPixel) { // loop for height
      color c = myImage.get(x, y); // get colour at pos x and y from img
      float b = brightness(c); 
      stroke(0);      
      if (b>200) {
        fill(c);
        ellipse(x, y, 40, 40);
      } else if (b<200) {
        fill(b);
        rect(x, y, 15, 15);
      }
    }
  }
}
