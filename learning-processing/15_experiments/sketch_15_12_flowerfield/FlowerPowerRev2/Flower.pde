class Flower 
{
  int x=100, y=200;
  color pointColor; // Colour for pedals
  color bodyColor; // Colour for main body

  // Global colours 
  // Previously I had them in the void display()
  color reddish = color(240, 70, 70);
  color orange = color(240, 150, 60);
  color red = color(240, 128, 128);
  color green = color(170, 190, 125);

  // colours for the bodyColor
  color yellow1 = color(250, 200, 80);
  color yellow2 = color(255, 180, 0);
  color yellow3 = color(250, 180, 50);

  // the contructor is called everytime a new flower object gets initialized 
  public Flower()
  {
    // Allocate random colour to the pedals
    int c = (int) random(0, 3);
    if (c == 0) pointColor = yellow1;
    else if (c == 1) pointColor = orange;
    else if (c == 2) pointColor = red;

    // Allocate random colour to the body
    int b = (int) random(0, 3);
    if (b == 0) bodyColor = yellow1;
    else if (b == 1) bodyColor = yellow2;
    else if (b == 2) bodyColor = yellow3;

    // Variation of the colour of the main body
    // Previousy tried to randomize but couldn't achieve the desired result
    // tried HBS but it was cascading down to all other colours defined below
    //bodyColor = color(250, 200, 80+random(70,80));
  }

  void display() 
  {
    float bodySize = 100;
    // stem
    rectMode(CENTER);
    noStroke();
    fill(green);
    rect(x, y+200, 6, 400);
    
    // leaves
    fill(green);
    noStroke();
    triangle(x, y+130, x-30, y+110, x-30, y+150);
    
    fill(green);
    noStroke();
    triangle(x, y+150, x+30, y+130, x+30, y+170);
    
    // body
    ellipseMode(CENTER);
    fill(bodyColor);
    stroke(250, 230, 180);
    strokeWeight(3);
    ellipse(x, y, bodySize, bodySize);

    // dot inside of body
    ellipseMode(CENTER);
    fill(orange);
    noStroke();
    ellipse(x, y, 10, 10);

    // dots around the flower loops
    for (int a=0; a<360; a+=(360/9)) 
    {
      //dots around flower
      int dx = (int)(cos(radians(a))*50);
      int dy = (int)(sin(radians(a))*50);
      noStroke();
      fill(pointColor);
      ellipse(x+dx, y+dy, 15, 15);
    }

    for (int a=0; a<360; a+=(360/10)) 
    {
      //dots around flower
      int dx = (int)(cos(radians(a))*70);
      int dy = (int)(sin(radians(a))*70);
      noStroke();
      fill(pointColor);
      ellipse(x+dx, y+dy, 18, 18);
    }

    for (int a=0; a<360; a+=(360/10)) 
    {
      //dots around flower
      int dx = (int)(cos(radians(a))*70);
      int dy = (int)(sin(radians(a))*70);
      noStroke();
      fill(reddish);
      ellipse(x+dx, y+dy, 10, 10);
    }
  }
}
