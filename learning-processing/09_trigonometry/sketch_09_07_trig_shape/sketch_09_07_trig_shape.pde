color grey = #4c4c4c;
color white = #f1f1f1;
color black = #191919;
color yellow = #edb650;
color blue = #c5e1e8;

void setup() {
  size(1000, 1000, P3D); 
  background(blue);

  float step=0.02; // defines how many u values 
  float size=70; // height of the image

  noFill();
  stroke(yellow);
  strokeWeight(2);

  beginShape();
  for (float v=0; v<2*PI; v=v+step) {
    for (float u=0; u<2*PI; u=u+step) {
      // u and v have values from 0 to 2π
      float x= cos(4*u)/4+sin(v)*cos(u)*5;
      float y=sin(4*u)/4+sin(v)*sin(u)*5;
      float z=cos(v);
      vertex(width/2+x*size, height/2+y*size, z*size); 
    }
  }
  endShape();
}
