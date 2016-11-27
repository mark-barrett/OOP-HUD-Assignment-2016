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
    }
  }
  
  void drawAltitudeTapeIndicator(boolean power)
  {
    if(power == true)
    {
    for(int i = 0; i<20000000; i+=150)
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
  
  void drawAltitudeIndicator(boolean power)
  {
    if(power == true)
    {
      textFont(speedIndicator25);
      stroke(0, 255, 0);
      fill(0);
      rect(altitudeTape+10, height/2.15, 75, 50);
      fill(0, 204, 0);
      textSize(24);
      textAlign(RIGHT);
      if(altitude > 0)
      {
        text(Math.round(altitude), altitudeTape+80, height/1.95);
      }
      else
      {
        text(0, altitudeTape+80, height/1.95);
      }
      noFill();
      textSize(15);
    }
  }
  
  void calculateAltitude()
  {
    if(pitch > 0 && speedTape.speed > 140)
    {
      this.altitude = (((pitch/500 * (speedTape.speed/100)) / 19.8) / timeDelta) + this.altitude;
    }
    
    if(pitch < 0 || speedTape.speed < 140)
    {
      this.altitude += (((pitch/500 * (speedTape.speed/100)) / 19.8) / timeDelta);
    }
  }
  void verticalSpeed()
  {
    if(mainSystems.battery == true)
    {
      text("VS", width/2+425, height/2+7);
      rect(width/2+375, 100, 25, 450);
      float vs = map(pitch, -300, 300, height/2+400, height/2-400);
      line(width/2+380, vs, width/2+400, height/2);
      println(pitch);
    }
  }
}