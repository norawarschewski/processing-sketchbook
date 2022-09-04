void setup() 

{

  size(800, 800);



  //original rect

  fill(0, 255, 0, 100);

  rect(200, 300, 50, 50);



  //same rect after rotation by 45 degrees

  fill(255, 0, 0, 100);

  translate(225, 325);

  rotate(PI/4);

  translate(-225, -325);

  rect(200, 300, 50, 50);

}
