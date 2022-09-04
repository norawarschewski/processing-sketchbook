/*
 Suppose we want to move a ball back and forth across the screen.
 The ball should "bounce" off the screen in the opposite direction.
 This is a completely sensible approach:
 */

int ballX, ballY, ballDir, ballDiameter; // Properties of our ball

void setup() {
  size(1000, 1000);
  ballX = ballDiameter; // Place the ball on the left edge of the screen so that it is just about completely visible
  ballY = height/2;
  ballDiameter = 30;
  ballDir = +1; // Initially the ball moves to the right

  ellipseMode(CORNER); // An ellipse's coordinate system starts at its upper left corner.
  noStroke();
  fill(0, 200, 0);
}

void draw() {
  background(0);

  /*

   A)  We take care of the ball position...
   Which cases can occur?
   1. the ball bumps against the left edge of the screen
   2. the ball bumps against the right edge of the screen
   3. the ball is on its way
   */

  if (ballX >= width - ballDiameter) // 2. Ball is touching the right edge of the screen
  {
    ballX = width-ballDiameter-1; // Why is this necessary? It has to do with above if-statement...
    ballDir = -ballDir;
  } else if (ballX <= 0) // 1. Ball is touching the left edge of the screen

  {
    ballX = 1; // Same here - why is this necessary?
    ballDir = -ballDir;
  } else // 3. The ball runs peacefully across the screen
  {
    ballX = ballX + ballDir * 4;
  }

  // B)  Now that it is clear where the ball is, we draw it at the position (ballX, ballY)!
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}
