final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void rec() {
  if (frameCount == 1) {
    videoExport = new VideoExport(this, "export.mp4");
    videoExport.setFrameRate(30);
    videoExport.startMovie();
  }
  videoExport.saveFrame();
  
  if (frameCount == 360) { 
      exit();
    }
}
