void setup()
{
  size(1250,650);
  background(0);
  
  speedTape = new SpeedTape();
  crossHair = new CrossHair();
}

SpeedTape speedTape;
CrossHair crossHair;

void draw()
{
  background(0);
  speedTape.speedTapeIndicator();
  speedTape.speedIndicator();
  speedTape.drawSpeedTape();
  
  if(frameCount%20 == 0) {
  if (keyPressed == false) {
    if(speedTape.speed > 0) {
      speedTape.speed -= 1;
    }
  }
  }
  
  crossHair.drawCrossHair();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      speedTape.increaseSpeed();
    }
  }
}