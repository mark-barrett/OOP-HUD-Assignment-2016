//This class deals with the SpeedTape on the HUD
class SpeedTape
{
  //Fields
  int speed;
  float speedTape;
  
  //SpeedTape Constructor
  SpeedTape()
  {
    this.speed = 0;
    //Draw the tape
    this.speedTape = width/3.5;
    stroke(0, 204, 0);
    line(speedTape, 100, speedTape, 550);
    line(speedTape-60, 100, speedTape, 100);
    line(speedTape-60, 550, speedTape, 550);
  }
  
  void speedIndicator()
  {
    fill(0);
    rect(speedTape-60, height/2.15, 50, 50);
    fill(0, 204, 0);
    textSize(25);
    text(speed, speedTape-60, height/1.95);
  }
  void increaseSpeed()
  {
    this.speed++;
  }
}