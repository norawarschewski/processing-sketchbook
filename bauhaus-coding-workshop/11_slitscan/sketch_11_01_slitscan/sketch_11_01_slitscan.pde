Movie img;

void setup() {
  size(900, 900);
  background(0);
  frameRate(30);

  img = new Movie(this, "IMG_3356.MOV");
  img.loop();
}

//Read each Frame:
void movieEvent(Movie img) {
  img.read();
}

//Vars for Rotation, Video Scan and Video delay timer:
float rot = -90; //Rotation Start
int scan = 0; //Scan Start
int timer = -45; //Delay Timer

//Vars for Rotation Speed, Video Width and Scan Spacing
int vh = 1920; //Video Width
int sp = 1920;  //Scan Spaceing
float rs = 0.9; //Rotation Speed

void draw() { 

  //Timer increment:
  timer ++;

  img.loadPixels();

  //Delay Timer:
  if (timer > 100) {

    //Rotation and Scan increment:
    //Fast Video = Smaller Number:
    rot += rs; 

    //Scan:
    scan += sp;

    //Rotation:
    translate(height/2, width/2);
    rotate(radians(rot));
    translate(-height/2, -width/2);

    //Black bar to Cover Artifacts:
    noStroke();
    fill(0);
    rect(width/2, height/2+2, 1, 450); 

    //Slit Scan:
    rectMode(CENTER);
    copy(img, scan, 0, 1, vh, width/2, height/2, 5, 600);
    rectMode(CORNER);

    //Rect to delete single Pixel that were not overwritten:
    noStroke();
    fill(0);
    rect(width/2, height/2+10, 0, 600);

    //Rotation Reset:
    translate(height/2, width/2); 
    rotate(radians(-rot));
    translate(-height/2, -width/2);

    //Hole in the middle:
    noStroke();
    fill(0);
    ellipse(width/2, height/2, 40, 40);

    //Scan Reset and Removing of black Bars:
    //Scan bounce:
    if (scan >= 50) {
      sp = -15;
    }

    if (scan <= 4) {
      sp = 15;
    }
  }
}
