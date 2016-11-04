void setup()
{
  size(1250,650);
  background(0);
  
  speedTape = new SpeedTape();
}

SpeedTape speedTape;

void draw()
{
  background(0);
  speedTape.speedTapeIndicator();
  speedTape.speedIndicator();
  speedTape.drawSpeedTape();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      speedTape.increaseSpeed();
    }
  }
}