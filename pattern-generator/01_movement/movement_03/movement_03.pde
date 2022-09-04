// ARRAY TIME!

float positionX;
float positionY;

float speedX = 3.5;
float speedY = 2.2;

boolean goingRight = true;
boolean goingDown = true;

int dvdLogoWidth = 140;
int dvdLogoHeight = 80;

// Our colors we want to cycle through
color[] dvdColors = {
  color(249, 243, 81),
  color(115, 250, 253),
  color(217, 74, 122),
  color(234, 63, 37),
  color(0, 52, 245),
  color(174, 51, 246)
};

int colorCounter = 0;

void setup(){
  size(1080, 1080);
  noStroke();
  fill(255, 255, 0);
  
  rectMode(CENTER);
  
  positionX = width/2;
  positionY = height/2;
}

void draw(){
  background(0);
  
  fill(dvdColors[colorCounter]);
  //fill(dvdColors[colorCounter%dvdColors.length]);
  rect(positionX, positionY, dvdLogoWidth, dvdLogoHeight);
  
  //BONUS:
  //speedX = map(mouseX, 0, width, 0.5, 10);
  //speedY = map(mouseY, 0, height, 0.5, 10);
  
  // Horizontal movement
  if(goingRight == true){
    positionX = positionX+speedX;
  } else {
    positionX = positionX-speedX;
  }
  
  if(positionX+(dvdLogoWidth/2) >= width){
    goingRight = false;
    colorCounter++;
  }
  
  if(positionX-(dvdLogoWidth/2) <= 0){
     goingRight = true;
     colorCounter++;
  }
  
  // Vertical movement
  if(goingDown == true){
    positionY = positionY+speedY;
  } else {
    positionY = positionY-speedY;
  }
  
  if(positionY+(dvdLogoHeight/2) >= height){
    goingDown = false;
    colorCounter++;
  }
  
  if(positionY-(dvdLogoHeight/2) <= 0){
     goingDown = true;
     colorCounter++;
  }
  
  // Switch back to first color if we reached the end of the array:
  if(colorCounter >= dvdColors.length){
    colorCounter = 0;
  }
  
}
