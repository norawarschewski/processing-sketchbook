float positionX;
float positionY;

float speedX = 3.5;
float speedY = 2.2;

boolean goingRight = true;
boolean goingDown = true;

int dvdLogoWidth = 140;
int dvdLogoHeight = 80;

color[] colors = {
  color(255, 0, 0),
  color(0, 255, 0),
  color(0, 0, 255),
  color(100,100,100),
};

int colorIndex = 0;

void setup() {
  size(1080, 1080);
  noStroke();

  rectMode(CENTER);

  positionX = width/2;
  positionY = height/2;
}

void draw() {
  background(0);
  fill(colors[(colorIndex)]);

  rect(positionX, positionY, dvdLogoWidth, dvdLogoHeight);

  //BONUS:
  //speedX = map(mouseX, 0, width, 0.5, 10);
  //speedY = map(mouseY, 0, height, 0.5, 10);

  // Horizontal movement
  if (goingRight == true) {
    positionX = positionX+speedX;
  } else {
    positionX = positionX-speedX;
  }

  if (positionX+(dvdLogoWidth/2) >= width) {
    goingRight = false;
    colorIndex++;
  }

  if (positionX-(dvdLogoWidth/2) <= 0) {
    goingRight = true;
    colorIndex++;
  }

  // Vertical movement
  if (goingDown == true) {
    positionY = positionY+speedY;
  } else {
    positionY = positionY-speedY;
  }

  if (positionY+(dvdLogoHeight/2) >= height) {
    goingDown = false;
    colorIndex++;
  }

  if (positionY-(dvdLogoHeight/2) <= 0) {
    goingDown = true;
    colorIndex++;
  }
  
  if(colorIndex >= colors.length);{
  colorIndex = 0;}
}
