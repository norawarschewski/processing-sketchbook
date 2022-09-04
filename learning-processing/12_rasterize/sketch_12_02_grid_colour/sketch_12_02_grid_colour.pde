void setup() {
  size(750,500);
  PImage myImage = loadImage("pexels-dsd-689777.jpg"); 
  // Processing Image / class 
  // myImage is a variable / object of the class
  // image(myImage,0,0);  / image not displayed
  // image is a method of the processing library
  // coordinates after the name
  //no stroke for the drawings of circles and square
  stroke(0);
  int widthNewPixel=5;
  int heightNewPixel=5;
  for (int x=0; x<width; x=x+widthNewPixel) { // loop for width
    for (int y=0; y<height; y=y+heightNewPixel) { // loop for height
      color c = myImage.get(x,y); // get colour at pos x and y from img
      fill(c); // fill with c
      ellipse(x, y, widthNewPixel, heightNewPixel);
    }
  }
}
