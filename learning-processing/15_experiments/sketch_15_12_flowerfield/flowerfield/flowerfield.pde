// MAIN PROGRAMM 
void setup() {
  size(800, 800);
  myFlowers = new Flower[10]; // array of 10 flowers
  for (int i=0; i<myFlowers.length; i++) { // length = number of arrays
    myFlowers[i]= new Flower(); // creates new flower 
    myFlowers[i].x=(int)random(0, width); // randomize x to adjust distribution
    myFlowers[i].y=(int)random(400, 600); // randomize y to adjust height
  }
}

Flower[] myFlowers;

void draw() {
  background(220, 230, 250);
  for (int i=0; i<myFlowers.length; i++) {
    myFlowers[i].display();
  }
}
