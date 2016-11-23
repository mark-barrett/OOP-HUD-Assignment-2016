class Systems
{
  boolean battery;
  boolean engine1;
  boolean engine2;
  boolean eng1max = false;
  boolean eng2max = false;
  boolean animate = true;
  boolean finishedAnimation = false;
  
  float eng1x, eng1y, eng1Thetha = 0;
  float eng1cx = 85;
  float eng1cy = 280;
  float eng2x, eng2y, eng2Thetha = 0;
  float eng2cx = 207;
  float eng2cy = 280;
  float radius = 49;
  float x = 250;

  Systems()
  {
    this.battery = true;
    this.engine1 = false;
    this.engine2 = false;
  }
  
  void displaySystemAlerts(boolean power)
  {
    if(power == true)
    {
      fill(0, 255, 0);
      textSize(25);
      text("EICAS", 48, 185);
      noFill();
      rect(20, 200, 250, 250);
      if(this.engine1 == false)
      {
        textSize(15);
        fill(255, 255, 0);
        text("ENG SHUTDOWN 1", 90, height/2+30);
        this.eng1Thetha = 0;
      }
      if(this.engine2 == false)
      {
        textSize(15);
        fill(255, 255, 0);
        text("ENG SHUTDOWN 2", 90, height/2+45);
      }
    }
  }
  
  void powerOnBattery()
  {
    this.battery = true;
  }
  
  void startEngine1()
  {

  }
  
  void drawEngineIndicators()
  {
    if(this.battery == true) {
      strokeWeight(2);
      stroke(0, 255, 0);
      fill(0, 255, 0);
      text("Engine 1", 90, 213);
      text("Engine 2", 210, 213);
      fill(0);
      ellipse(85, 280, 100, 100);
      ellipse(207, 280, 100, 100);
      stroke(0);
      rect(32, 225, 50, 50);
      stroke(255, 0 ,0);
      line(28, 275, 43, 275);
      fill(0);
      stroke(0);
      rect(155, 225, 50, 50);
      stroke(255, 0 ,0);
      line(150, 275, 165, 275);
      stroke(0, 255, 0);
    }
  }
  
  void checkEngineAnimation()
  {
    if(this.battery == true)
    {
      if(mainSystems.engine1 == false)
      {
        strokeWeight(3);
        stroke(0, 255, 0);
        line(eng1cx, eng1cy, 85, 231);
      }
      if(mainSystems.engine2 == false)
      {
        strokeWeight(3);
        stroke(0, 255, 0);
        line(eng2cx, eng2cy, 207, 231);
      }
      
      if(mainSystems.engine1 == true)
      {
        if(eng1max == false)
        {
          eng1x = eng1cx - sin(eng1Thetha) * radius;
          eng1y = eng1cy - cos(eng1Thetha) * radius;
          line(eng1cx, eng1cy, eng1x, eng1y);
          
          if(eng1Thetha > -4)
          {
            eng1Thetha -= 0.01f;
          }
        } 
      }
      
      if(mainSystems.engine2 == true)
      {
        if(eng2max == false)
        {
          strokeWeight(2);
          eng2x = eng2cx - sin(eng2Thetha) * radius;
          eng2y = eng2cy - cos(eng2Thetha) * radius;
          line(eng2cx, eng2cy, eng2x, eng2y);
          
          if(eng2Thetha > -4)
          {
            eng2Thetha -= 0.01f;
          }
      
        }
      }
    }
      
  }
  
  void animateEICAS()
  {
      fill(0);
      stroke(0);
      rect(20, 200, 250, x);
      stroke(0, 255, 0);
      
      if(this.x == 0)
      {
        this.animate = false;
        this.finishedAnimation = true;
      }
  }
    
 
}