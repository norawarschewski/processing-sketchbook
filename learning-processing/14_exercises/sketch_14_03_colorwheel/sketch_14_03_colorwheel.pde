/*

 This is a neat little program that I modified from here: https://processing.org/tutorials/transform2d/
 The link...well...links to a detailed tutorial on 2D transformations in Processing. I recommend you to
 work through it as the explanations are clear. There is a lot to learn for you: usage of frameCount,
 
 // modulo operator, rotation, ...

 Let's have a look at the inner workings of the program!
 When is the condition "frameCount % 10 == 0" fulfilled?
 It is fulfilled when frameCount is divisible by 10.
 The modulo operator returns the remainder of an integer division.
 We want the colors in our program to change according to the elapsed time.
 What does the next program line do?
 "fill(frameCount * 3 % 255, frameCount * 5 % 255, frameCount * 7 % 255);"
 Each of the three arguments of fill() returns a number between 0 and 254.
 A modulo operation with 255, for example "number % 255", always returns a
 result in the range 0..254. So it doesn't matter that frameCount gets
 bigger and bigger the longer the program runs.
 This program example clearly shows the difference between the modes
 rectMode(CENTER) and rectMode(CORNER).
 Please see https://processing.org/reference/rectMode_.html 
 */

void setup() {
  size(500, 500);
  background(255);
  smooth();
  noStroke();
  rectMode(CORNER); // This is the default rectMode.
  //rectMode(CENTER); // Surprise! What happens if you activate this?
}









// It should be clear by now why we need the draw loop here:

// The bars that form the wheel should accumulate over time

// and also depend in a certain way on the environment variable

// frameCount. The latter changes over time, but not if we merely

// use setup() once! We can only change things in our programs

// over time, or query the keyboard or a gamepad while the program

// runs, if it has the draw() loop.

void draw()
{

  if (frameCount % 5 == 0) // Every 5th. frame, we execute the methods inside the block.

  {

    fill(frameCount * 3 % 255, frameCount * 5 % 255, frameCount * 7 % 255);

    pushMatrix();

    translate(250, 250); // This is where our subsequent drawing operations take place.

    rotate(radians(frameCount * 2  % 360)); // The rotation angle is also dependent on frameCount

    rect(0, 0, 160, 40);

    popMatrix();
  }



  //print ("\nRed channel: "+(frameCount * 3 % 255));
}
