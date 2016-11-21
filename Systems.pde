class Systems
{
  boolean battery;
  boolean engine1;
  boolean engine2;
  boolean eng1max = false;
  boolean eng2max = false;
  
  float eng1x, eng1y, eng1Thetha = 0;
  float eng1cx = 85;
  float eng1cy = 500;
  float eng2x, eng2y, eng2Thetha = 0;
  float eng2cx = 230;
  float eng2cy = 500;
  float radius = 62.5;

  Systems()
  {
    this.battery = false;
    this.engine1 = false;
    this.engine2 = false;
  }
  
  void displaySystemAlerts(boolean power)
  {
    if(power == true)
    {
    if(this.engine1 == false)
    {
      fill(255, 255, 0);
      text("ENG SHUTDOWN 1", width/2+400, height/2+15);
    }
    if(this.engine2 == false)
    {
      fill(255, 255, 0);
      text("ENG SHUTDOWN 2", width/2+400, height/2+30);
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
    strokeWeight(2);
    stroke(0, 255, 0);
    fill(0, 255, 0);
    text("Engine 1", 85, 410);
    text("Engine 2", 230, 410);
    fill(0);
    ellipse(85, 500, 125, 125);
    ellipse(230, 500, 125, 125);
    stroke(0);
    rect(15, 435, 67, 67);
    stroke(255, 0 ,0);
    line(10, 502, 35, 502);
    fill(0);
    stroke(0);
    rect(160, 435, 67, 67);
    stroke(255, 0 ,0);
    line(155, 502, 185, 502);
    stroke(0, 255, 0);
  }
  
  void checkEngineAnimation()
  {
    
    if(mainSystems.engine1 == false)
    {
      strokeWeight(3);
      stroke(0, 255, 0);
      line(85, 500, 85, 440);
    }
    if(mainSystems.engine2 == false)
    {
      strokeWeight(3);
      stroke(0, 255, 0);
      line(230, 500, 230, 440);
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
    /*
    if(mainSystems.engine2 == true)
    {
      if(eng2max == false)
      {
        eng2x = eng1cx - sin(eng2Thetha) * radius;
        eng2y = eng2cy + cos(eng2Thetha) * radius;
        line(eng2cx, eng2cy, eng2x, eng2y);
        eng2Thetha -= 0.01f;
        println(eng2Thetha);
        
        if(eng2Thetha < -4)
        {
          eng2max = true;
          while(eng2max == true)
          {
          line(eng2cx, eng2cy, eng2x, eng2y);
          }
        }
      }
    }
    */
      
  }
}