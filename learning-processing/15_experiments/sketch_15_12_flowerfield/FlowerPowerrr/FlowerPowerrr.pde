Flower flower1;
Flower flower2; 
Flower flower3; 


void setup() {
  size (800, 800);
  background(220, 230, 250);
  // Arguments go inside the parentheses when the object is constructed.  
  flower1 = new Flower(200, 600, 400, 12, 10, 12, 130, color(250, 200, 80), color(170, 190, 125), color(240, 150, 60)); 
  flower2 = new Flower(400, 400, 400, 10, 15, 10, 100, color(240, 150, 60), color(170, 190, 125), color(250, 200, 80));
  flower3 = new Flower(600, 500, 400, 6, 17, 6, 70, color(250, 200, 80), color(170, 190, 125), color(240, 150, 60));
}

void draw() {
  flower1.display();
  flower2.display();
  flower3.display();
}
