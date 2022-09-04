float r = 10; // lowered value to start more in the center
float theta = 0; 

void setup() {
size(800, 800);
background(0);
}

void draw() {
float x = r * cos(theta);
float y = r * sin(theta);
stroke(random(255), 0, 0);
strokeWeight(4);
fill(random(255), 0, 0);
ellipse(x + width/2, y + height/2, 16, 16);
theta +=0.01; // increment angle
r += 0.07; // increment r 
}
