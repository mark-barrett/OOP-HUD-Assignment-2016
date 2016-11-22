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
  
  void drawDegrees(boolean power) {
    if(power == true)
    {
      if(x != 120)
      {
        strokeWeight(1);
        stroke(0, 255, 0);
        line(width/2-120, height/2-100, width/2+x, height/2-100);
        line(width/2+x, height/2+100, width/2-x, height/2+100);
        line(width/2-120, height/2-200, width/2+x, height/2-200);
        line(width/2+x, height/2+200, width/2-x, height/2+200);
        x+=2;
      }
      else
      {
        strokeWeight(1);
        line(width/2-120, height/2-100, width/2+120, height/2-100);
        text("10", width/2+130, height/2-90);
        text("10", width/2-160, height/2-90);
        line(width/2+120, height/2+100, width/2-120, height/2+100);
        text("10", width/2+130, height/2+110);
        text("10", width/2-160, height/2+110);
        line(width/2-120, height/2-200, width/2+120, height/2-200);
        text("20", width/2+130, height/2-190);
        text("20", width/2-160, height/2-190);
        line(width/2-120, height/2+200, width/2+120, height/2+200);
        text("20", width/2+130, height/2+210);
        text("20", width/2-160, height/2+210);
      }
    }
  }
      
}