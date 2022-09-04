PImage img;
 
void setup()
{
  img = loadImage("pexels-dsd-689777.jpg");
  size(750,500,P3D);
 
  noLoop();
 
  //Main image
  image(img,0,0);
 
  //Just red
  tint(255,0,0,100);
  image(img,2,2); 
 
  //Just green
  tint(0,255,0,100);
  image(img,4,4);
 
  //Just blue
  tint(0,0,255,100);
  image(img,6,6);
}
