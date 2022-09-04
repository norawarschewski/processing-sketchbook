import processing.video.*;
// Size of each cell in the grid
int videoScale = 10;
// Number of columns and rows in the system
int cols, rows;
// Variable for capture device
Movie movie; 

color bg = #000000;
color fg = #f1f1f1;
PFont font;

void setup() { 
  size(900, 900);
  frameRate(30);  
  // Initialize columns and rows  
  cols = width / videoScale;  
  rows = height / videoScale;  
  // Construct the Capture object  
  movie = new Movie(this, "feuer.mp4");  
  movie.loop();
  font = createFont("helvetica.otf", 500);
}

void movieEvent(Movie movie) {  
  movie.read();
}

void draw() {  
  background(0);
  movie.loadPixels();  
  // Begin loop for columns  
  for (int i = 0; i < cols; i++) {    
    // Begin loop for rows    
    for (int j = 0; j < rows; j++) {      
      // Where are you, pixel-wise?      
      int x = i*videoScale;      
      int y = j*videoScale;    

      // Reverse the column to mirro the image.
      int loc = (movie.width - i - 1) + j * movie.width;       

      color c = movie.pixels[loc];
      // A rectangle's size is calculated as a function of the pixel’s brightness. 
      // A bright pixel is a large rectangle, and a dark pixel is a small one.
      float sz = (brightness(c)/255) * videoScale;       

      rectMode(CENTER);      
      fill(#0000ff);      
      noStroke();      
      rect(x + videoScale/2, y + videoScale/2, sz, sz);
    }
  }

  textFont(font);
  textSize(80);
  textAlign(LEFT);
  fill(bg);
  //text("LÖSCHEN\nUND\nHETZEN", width/2+5, height/2-50+5);
  fill(fg);
  text("LÖSCHEN\nUND\nHETZEN!", width/2-250, height/2-290);
  stroke(fg);
  strokeWeight(100);
  line (0, 100, 0, 400);
  
  translate(width/2, height/2);
  fill(fg);
  noStroke();
  rect(-371.5, 0, 157, width);
  rect(371.5, 0, 157, width);
  rect(0, -427.5, height, 45);
  rect(0, 427.5, height, 45);
  
  //rec();
  
    saveFrame("output/NAME-######.png");
  if (frameCount == 50) {
    exit();
  }
} 
