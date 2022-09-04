/*

  Dear All, please read https://processing.org/reference/push_.html

  You can use push() and pop(), or pushMatrix() and popMatrix().

  Say you want your shapes change direction when they arrive x-position 401. One solution is to use a variable

  that keeps track of the shape's the current direction.

  Each shape/object has its own angle, position and direction, color, taste, ...

  You could as well use arrays to store the values, a function or/and a class.



  Suggestion: Try to use a function with parameters

*/





float angle1 = 0, angle2 = 30, angle3 = 60, angle4 = 120;

float x1 = 35, x2 = 60, x3 = 940, x4 = 920;

float y1 = 80, y2 = 580, y3 = 190, y4 = 690;

float dir1 = 1, dir2 = 1, dir3 = -1, dir4 = -1; // 1 is to the right, -1 is to the left



void setup()

{

  size(1000, 800);

  frameRate(50);

  rectMode(CENTER); // We are going to define rectangles relative to their center

}



void draw()

{

  background(255);



  stroke(100);

  line(width/2, 0, width/2, height);





  // --- UPPER LEFT OBJECT ---

  

  

  // We use translate to modify its position

  stroke(0);

  noFill();

  

  if(x1 > 400 || x1 < 35)

  {

    println("Upper left object has changed its direction");

    dir1 = -dir1;

  }

  push();

  translate(x1, y1);

  rotate(angle1);

  rect(0, 0, 50, 60);

  pop();





  // --- LOWER LEFT OBJECT ---

  

  

  stroke(100);

  fill(20, 140, 40, 200);

  if(x2>400 || x2<25)

  {

    println("Lower left object has changed its direction");

    dir2 = -dir2;

  }

  push();

  translate(x2, y2);

  rotate(angle2);

  rect(0, 0, 60, 40);

  pop();

  

  

  // --- UPPER RIGHT OBJECT ---

  

  

  stroke(150);

  fill(240, 30, 140, 120);

  if(x3 < width/2+38 || x3 > width-35)

  {

    println("Upper right object has changed its direction");

    dir3 = -dir3;

  }

  push();

  translate(x3, y3);

  rotate(angle3);

  rect(0, 0, 70, 25);

  pop();

  

  

   // --- LOWER RIGHT OBJECT ---

  

  

  stroke(150);

  fill(40, 130, 240, 180);

  if(x4 < 410 || x4 > 950)

  {

    println("Lower right object has changed its direction");

    dir4 = -dir4;

  }

  push();

  translate(x4, y4);

  rotate(angle4);

  rect(0, 0, 50, 45);

  pop();

  

  

  

  // Adjust the parameters for the object on the upper left

  angle1 = angle1+dir1*0.1; // Change the angle with respect to the direction

  x1 = x1 + dir1*2.0; // Increment or decrement the x-position dependent on the direction

  

  // Adjust the parameters for the object on the lower left

  angle2 = angle2+dir2*0.07;

  x2 = x2 + dir2*1.5;

  

  // Adjust the parameters for the object on the upper right

  angle3 = angle3+dir3*0.2;

  x3 = x3 + dir3*1.7;

  

  // Adjust the parameters for the object on the lower right

  angle4 = angle4+dir4*0.1;

  x4 = x4 + dir4*1.4;

}
