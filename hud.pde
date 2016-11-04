void setup()
{
  size(1250,650);
  background(0);
  
  speedTape = new SpeedTape();
}

SpeedTape speedTape;

void draw()
{
  speedTape.speedIndicator();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      speedTape.increaseSpeed();
    }
  }
}