float xOffset = 0;       // Perlin x-offset
float yOffset = 0;       // Perlin y-offset
float offsetInc = 0.006; // Perlin offset increment
float inc = 1;           // Perin increment
float s = 3;             // Start size of perlin ring
float m = 1.005;         // Size multiplier
 
void setup() {
  size(900, 900);
  background(#000000);
  noFill();
  stroke(#f1f1f1);
}
 
void draw() {
  translate(width / 2, height / 2);
 
  stroke(#f1f1f1);
  if (s < 2000) {
    // Create a series of perlin rings from big to small
    for (int nTimes = 0; nTimes < 250; nTimes++) {
 
      // Less points for smaller rings
      int nPoints = int(4 * PI * s);
      nPoints = min(nPoints, 500);
      //println(nPoints);
 
      // Create ring
      for (int i = 0; i < nPoints; i++) {
        float a = (float)i / nPoints * TAU;
        float n = noise(xOffset + cos(a) * inc, yOffset + sin(a) * inc) * s;
        float a1 = (float)(i + 1) / nPoints * TAU;
        float n1 = noise(xOffset + cos(a1) * inc, yOffset + sin(a1) * inc) * s;
        line(n * cos(a), n * sin(a), n1 * cos(a1), n1 * sin(a1));
      }
 
      // Increment perlin offset for next ring
      xOffset += offsetInc;
      yOffset += offsetInc;
 
      // Update size
      s *= m;
    }
  } else {
    println("done");
    endRecord();
    noLoop();
  }
}
