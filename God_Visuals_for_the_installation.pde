// a sketch by Quelic Berga to present the project God at SAO Festival at Farrera 
// The generated visuals were projected over a sculputre inside an old church. 
// link of the project http://quelic.net/god/
float boxerX= 10;
float boxerY= 10;
int sqSize = 2;
void setup() {
  size(1024, 768);
  frameRate(25);
  noStroke();
}

void draw() {
  if (random(100)<1) {
    fill (random(255));
    rect(0, 0, width, height);
  } else {
    fill(0, 15);
    rect(0, 0, width, height);
  }
  if (random(100)>65) {
    for (int i = 0; i < int (random (7520)+1); i++ ) {
      fill(255, random(255));
      if (random (10)<.5) {
        rect(boxerX, boxerY, sqSize*2, sqSize*2);
      }

      rect(boxerX, boxerY, sqSize, sqSize);
      if (boxerX<width) {
        boxerX+=10;
      } else {
        boxerX = 0;
        boxerY += 10;
      }
      if (boxerY>height) {
        boxerY=0;
      }
    }
  }
}