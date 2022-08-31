class Line {
  // curved line animation

  Line() {
  }

  void display() {

    // line 
    interpolation += interpolationSpeed;
    if (interpolation>1) {
      interpolation = 0;
      currentFrame = (currentFrame+1)%numFrames;
    }
    stroke(fg);
    strokeWeight(10);
    strokeCap(SQUARE);
    noFill();
    
    beginShape();
    for (int i=0; i< numPoints; i++) {
      PVector p = points[i][currentFrame];
      PVector n = points[i][(currentFrame+1)%numFrames];
      PVector lrp = new PVector(lerp(p.x, n.x, interpolation), lerp(p.y, n.y, interpolation));
      curveVertex(lrp.x, lrp.y);
      if (i == 0||i == numPoints-1) { 
        curveVertex(lrp.x, lrp.y);
      }
    }
    endShape();
  }
}
