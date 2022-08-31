class Rect {
  // curved line animation

  Rect() {
  }

  void display() {

    // line 
    interpolation += interpolationSpeed;
    if (interpolation>1) {
      interpolation = 0;
      currentFrameRect = (currentFrameRect+1)%numFramesRect;
    }
    stroke(fg);
    strokeWeight(30);
    strokeCap(SQUARE);
    noFill();
    beginShape();
    for (int j=0; j< numPointsRect; j++) {
      PVector p = pointsRect[j][currentFrameRect];
      PVector n = pointsRect[j][(currentFrameRect+1)%numFramesRect];
      PVector lrp1 = new PVector(lerp(p.x+100, n.x+100, interpolation), lerp(p.y+100, n.y+100, interpolation));
      curveVertex(lrp1.x+100, lrp1.y+100);
      if (j == 0||j == numPointsRect-1) { 
        curveVertex(lrp1.x+100, lrp1.y+100);
      }
    }
    endShape();
  }
}
