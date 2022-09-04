class Dustndirt {
  color bg = #000000;
  color fg = #f1f1f1;
  int size = 50;
  float x;
  float y;
  int varX = -10;
  int varY = 10; 
  int cvarX = -50;
  int cvarY = 50;
  float speedCounter;

  Dustndirt() {
  }

  void display() {
    if (speedCounter < 10000) { 
      speedCounter++;
    } else { 
      speedCounter = 0;
    }

    if (speedCounter % 30 == 0)
    {
      // if variable can be devided by % x the object gets moved aka the speed gets increased
      ellipse(random(0, width), random(0, height), random(1, 5), random(1, 5));

      push();
      translate(random(0, width), random(0, height));
      fill(fg);
      beginShape();
      vertex(random(varX, varY), random(varX, varY));
      vertex(random(varX, varY), random(varX, varY));
      vertex(random(varX, varY), random(varX, varY));
      vertex(random(varX, varY), random(varX, varY));
      vertex(random(varX, varY), random(varX, varY));
      vertex(random(varX, varY), random(varX, varY));
      vertex(random(varX, varY), random(varX, varY));
      endShape();
      pop();

      push();
      translate(random(0, width), random(0, height));
      noFill();
      stroke(fg);
      strokeWeight(random(0.1, 1));
      beginShape();
      curveVertex(random(cvarX, cvarY), random(cvarX, cvarY));
      curveVertex(random(cvarX, cvarY), random(cvarX, cvarY));
      curveVertex(random(cvarX, cvarY), random(cvarX, cvarY));
      curveVertex(random(cvarX, cvarY), random(cvarX, cvarY));
      endShape();
      pop();
    }
  }
}
