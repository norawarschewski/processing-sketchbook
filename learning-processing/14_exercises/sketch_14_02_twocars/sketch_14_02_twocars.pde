// Example 8-2: Two Car objects

Car myCar1;
Car myCar2; // Two objects!

void setup() {
  size(480, 270);
  // Arguments go inside the parentheses when the object is constructed.  
  myCar1 = new Car(color(111), 0, 100, 2); 
  myCar2 = new Car(color(151), 0, 200, 1);
}

void draw() {
  background(255);
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
}
