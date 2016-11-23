//This class deals with the SpeedTape on the HUD
class SpeedTape
{
  //Fields
  int speed;
  float speedTape;
  
  //SpeedTape Constructor
  SpeedTape()
  {
    
  }
  
  void drawSpeedTape(boolean power) {
    if(power == true)
    {
    //Draw the tape
    this.speedTape = width/3.5;
    stroke(0, 204, 0);
    line(speedTape, 100, speedTape, 550);
    line(speedTape-60, 100, speedTape, 100);
    line(speedTape-60, 550, speedTape, 550);
    text("IAS", speedTape-50, 575);
    }
  }
  void speedIndicator(boolean power)
  {
    if(power == true)
    {
    textFont(speedIndicator25);
    stroke(0, 255, 0);
    fill(0);
    rect(speedTape-60, height/2.15, 50, 50);
    fill(0, 204, 0);
    textSize(25);
    textAlign(LEFT);
    text(speed, speedTape-57, height/1.95);
    triangle(speedTape-10, height/2.15+20, speedTape+3, height/2.15+25, speedTape-10, height/2.15+30);
    }
  }
  
  void speedTapeIndicator(boolean power)
  {
    if(power == true)
    {
    for(int i = 0; i<height; i+=60)
    {
      fill(0, 255, 0);
      if(i<1000) {
      line(speedTape, height/2-i+this.speed*3, speedTape-20, height/2-i+this.speed*3);
      textSize(17);
      text(i/3, speedTape-50, height/2-i+this.speed*3);
      }
    }
    stroke(0);
    fill(0);
    rect(0, 0, width, 99);
    rect(0, height-99, width, 99);
    }
  }
  void increaseSpeed()
  {
    this.speed++;
  }
}