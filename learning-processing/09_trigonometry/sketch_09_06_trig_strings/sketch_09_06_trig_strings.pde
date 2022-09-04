//Trig Strings : By Drew Ratliff


//trig stuff
float angle = 0.0;
float speed = .05;
//radius
float range = 300;

Wave myWave;

void setup() {
  size (900,900);
}


void draw () {
  //set background, make random same, translate to middle
  background(0);
  randomSeed(6);
  pushMatrix();
  translate(0,height/2);
  
  
  for(int i = 0; i < 100; i++) {
    //set random blue stroke to strings
    stroke(random(255),random(255),random(200,255),random(100,200));
    
    //make wave with random x pos for bezier curves
    myWave = new Wave(int(random(width)),int(random(width)));
    
    myWave.display();
  }
  
  angle += speed;
  popMatrix();
}



class Wave {
  float b1x;
  float b1y;
  float b2x;
  float b2y;
  float sinval;
  float cosval;
 
  
  Wave(float x1, float x2) {

    b1x = x1;
    b2x = x2;
  }
  
  void display() {
    
    //Trig Math for motion
    sinval = sin(random(angle));
    cosval = cos(random(angle));
    float b1y =  (sinval * range);
    float b2y = (cosval * range);
    
    //draw string
    noFill();
    beginShape();
    vertex(0,0);
    bezierVertex(b1x,b1y,b2x,b2y,width,0);
    endShape(); 
  }
}
