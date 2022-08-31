color bg = #000000;
color fg = #f1f1f1;
float x = 0;

void setup() {
  size(900, 900);
  background(bg);
  smooth();
  frameRate(25);
}

void draw() {
  background(bg);
  translate(width/2, height/2);

  float amount = 45;
  float magnitude = 100;

  stroke(fg);
  strokeWeight(2);

  for (int i = 0; i < amount; i++) {

    // wave1 alters the x-axis
    float wave1 = sin(radians(frameCount + i * 10)) / magnitude;

    // wave2 alters the y-axis
    float wave2 = tan(radians(frameCount + i * 180)) * magnitude;

    //scale(0.9);
    rotate(degrees(35));
    ellipse(wave1, wave2, 347, 1);
    ellipse(wave1, wave2, 1, 347);

    println (mouseX +"," + mouseY);
  }
}
