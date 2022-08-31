color bg = #000000;
color fg = #f1f1f1;
float sw;
boolean toggle = true;

void setup() {
  size(900, 900);
  background(fg);
  sw = 2;
}

void draw() {
  background(fg);

  noFill();
  stroke(bg);
  strokeWeight(sw);
  ellipse(width/2, height/2, 250, 250);

  if (toggle) {
    sw++;
    if (sw == 200) {
      toggle = false;
    }
  } else {
    sw--;
    if (sw == 0) {
      toggle = true;
    }
  }
  rec();
}
