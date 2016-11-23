//This class deals with the SpeedTape on the HUD
class AltitudeTape
{
  //Fields
  float altitude;
  float altitudeTape;
  float x = 0;
  boolean animate = true;
  
  void drawAltitudeTape(boolean power) {
    if(power == true)
    {
      //Draw the tape
      this.altitudeTape = width-340;
      stroke(0, 204, 0);
      line(altitudeTape, 100, altitudeTape, 550);
      line(altitudeTape+60, 100, altitudeTape, 100);
      line(altitudeTape+60, 550, altitudeTape, 550);
    }
  }
      
}