// ********************************
// base code provided during class
// ********************************


// we need a variable to keep track of the position (X)
float positionX;

// And a variable for the speed. This value gets added every frame.
float speed = 2.5;

// And finally a boolean that we can use to decide if the ball should go left or right.
boolean goingRight = true;

void setup(){
  size(1080, 1080);
  noStroke();
  fill(255, 255, 0);
  
  //let's start the circle in the middle:
  positionX = width/2;
}

void draw(){
  background(0);
  ellipse(positionX, height/2, 50, 50);
  
  //BONUS:
  //speed = map(mouseY, 0, height, 0.5, 10);
  
  if(goingRight == true){
    // If the ball is supposed to go right, we ADD the speed to the position:
    positionX = positionX+speed;
  } else {
    // or else, the ball should go to the left, so we SUBTRACT the speed from the position:
    positionX = positionX-speed;
  }
  
  //Let's see if we should flip the direction (if the ball reached either end):
  if(positionX+25 >= width){
    // we check the position of the ball, and half of the width of the ball (because the ball is drawn from the center)
    goingRight = false;
  }
  
  if(positionX-25 <= 0){
     goingRight = true;
  }
  
}
