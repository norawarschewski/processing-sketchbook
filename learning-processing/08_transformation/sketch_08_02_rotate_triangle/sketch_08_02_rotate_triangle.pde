float angle = 0;

float x = 0;

float y = 0;



// We want two triangles turn around their centers, similar to what rectMode(CENTER) does.

// This requires you to draw your triangle/your object around the center of its local coordinate

// system. Do it like this:

// If your object shall rotate around (160, 100), 

// 1) translate the center of the local coordinate system to it,

// 2) rotate the coordinate system (this happens always around its center),

// 3) draw the shape AROUND the center of the coordinate system (use negative and positive coordinates)



// Please note: Processing can only use one particular coordinate system at a time.

// But we are talking about "local" coordinate systems as this is the way we think about objects.

// So if we want our objects to have individual/local coordinate systems, we need to use pushMatrix()

// and popMatrix() to save and restore the one and only coordinate system and make temporary modifications

// to it.



void setup() 

{

  size(1000, 800);

  frameRate(60);

}



void draw() 

{

  background(255);



  

  // Draw the first triangle

  pushMatrix(); // Save the state of the coordinate system

  noFill();

  stroke(0);

  translate(160, 100); // This is the origin of the first triangle's coordinate system

  rotate(angle); // Rotate the first triangle's coordinate system clockwise AROUND THE ORIGIN

  triangle(-20, -20, 30, 20, 10, 30); // Draw the first triangle "around" the origin

  popMatrix(); // Restore the state of the coordinate system. Otherwise the modifications to it would add up.

  // But right now we do not want the first triangle to be the center of origin for the second one, or similar...

  

  

  // Draw the second triangle

  pushMatrix(); // Save the state of the coordinate system

  noFill();

  stroke(0);

  translate(width/2, height/2); // This is the origin of the second triangle's coordinate system

  rotate(-angle); // Rotate the coordinate system anticlockwise AROUND THE ORIGIN

  triangle(-30, -30, 40, 25, 15, 25); // Draw the second triangle "around" the origin

  popMatrix(); // Restore the state of the coordinate system.

  

  angle=angle+0.1; // We use this variable for both triangles, but we could use two independent variables as well.

}
