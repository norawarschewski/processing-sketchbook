void setup(){
  size(1000,1000);
  background(0);
  noStroke();
  //the starting value of the noise
  //this can be any value, in fact
  float xOff=0;
  for (int x=0;x<width; x=x+20){
    //the increment of the starting value, the "scale" of noise
    //the smaller the values, the smoother the result
    xOff=xOff+0.1;
    //note that the result of the noise function depends on the input value xOff
    //if you use the same xOff twice, the output will be twice the same
    //the output is always in the range between 0 and 1
    float n = noise(xOff)*200;
    rect(x,height/2-n,10,10);
  }
}
