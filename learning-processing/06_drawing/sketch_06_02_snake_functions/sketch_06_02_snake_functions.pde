Snake snake0;
Snake snake1;
Snake snake2;
Snake snake3;
Snake snake4;

void setup() {
  size(800, 800);
  // Initialize
  snake0 = new Snake(30);
  snake1 = new Snake(60);
  snake2 = new Snake(90);
  snake3 = new Snake(60);
  snake4 = new Snake(30);
}

void draw() {
  background(0);

  // Update and display
  snake0.update(mouseX-30, mouseY);
  snake0.display();

  // Update and display
  snake1.update(mouseX+30, mouseY);
  snake1.display();
  
  // Update and display
  snake2.update(mouseX+120, mouseY);
  snake2.display();
  
  // Update and display
  snake3.update(mouseX+210, mouseY);
  snake3.display();
  
  // Update and display
  snake4.update(mouseX+270, mouseY);
  snake4.display();
}
