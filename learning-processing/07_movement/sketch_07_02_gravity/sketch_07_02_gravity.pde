Ball ballOne; // declare ball 
Ball ballTwo;
Ball ballThree;

void setup() {
  size(800, 800);
  ballOne = new Ball(color (random (255), random (0), random (0)), 200, 0, 0, 0.1, random(20, 150));
  ballTwo = new Ball(color (random (255), random (0), random (0)), 400, 0, 0, 0.3, 50);
  ballThree = new Ball(color (random (255), random (0), random (0)), 600, 0, 0, 0.2, 80);
}

void draw() {
  background(255); 
  ballOne.display();
  ballOne.speed();
  ballOne.gravity();

  ballTwo.display();
  ballTwo.speed();
  ballTwo.gravity();

  ballThree.display();
  ballThree.speed();
  ballThree.gravity();
}
