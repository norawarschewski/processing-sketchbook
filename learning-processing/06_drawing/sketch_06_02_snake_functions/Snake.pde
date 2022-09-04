class Snake {
  // x and y positions
  int[] xpos;
  int[] ypos;
  int c = color(random(255),0,0);

  // The constructor determines the length of the snake
  Snake(int n) {
    xpos = new int[n];
    ypos = new int[n];
  }

  void update(int tempX, int tempY) {
    // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. Stop at the second to last element.
    for (int i = 0; i < xpos.length-1; i ++ ) {
      xpos[i] = xpos[i+1]; 
      ypos[i] = ypos[i+1];
    }

    // Update the last spot in the array with the mouse location.
    xpos[xpos.length-1] = tempX; 
    ypos[ypos.length-1] = tempY;
  }

  void display() {
    // Draw everything
    for (int i = 0; i < xpos.length; i ++ ) {
      // Draw an ellipse for each element in the arrays. 
      // Color and size are tied to the loop's counter: i.
      noStroke();
      fill(c);
      ellipse(xpos[i],ypos[i],i,i); 
    }

  }

}
