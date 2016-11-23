//This class deals with the SpeedTape on the HUD
class AltitudeTape
{
  //Fields
  float altitude = 0;
  float altitudeTape = width-340;
  float x = 0;
  boolean animate = true;
  
  void drawAltitudeTape(boolean power) {
    if(power == true)
    {
      //Draw the tape
      stroke(0, 204, 0);
      line(altitudeTape, 100, altitudeTape, 550);
      line(altitudeTape+60, 100, altitudeTape, 100);
      line(altitudeTape+60, 550, altitudeTape, 550);
      text("ALT", altitudeTape+15, 575);
    }
  }
  
  void drawAltitudeTapeIndicator(boolean power)
  {
    if(power == true)
    {
    for(int i = 0; i<2000; i+=150)
    {
      fill(0, 255, 0);
      if(i<20000) 
      {
        line(altitudeTape, height/2-i+this.altitude*3, altitudeTape+20, height/2-i+this.altitude*3);
        textSize(17);
        text(i/3, altitudeTape+50, height/2-i+this.altitude*3);
      }
    }
    stroke(0);
    fill(0);
    rect(0, 0, width, 99);
    rect(0, height-99, width, 99);
    }
  }
  
  void increaseAltitude()
  {
    this.altitude +=2;
  }
      
}