class Systems
{
  boolean battery;
  boolean engine1;
  boolean engine2;
  boolean eng1max = false;
  boolean eng2max = false;
  
  float eng1x, eng1y, eng1Thetha = 0;
  float eng1cx = 70;
  float eng1cy = 250;
  float eng2x, eng2y, eng2Thetha = 0;
  float eng2cx = 190;
  float eng2cy = 250;
  float radius = 50;

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
        fill(255, 255, 0);
        text("ENG SHUTDOWN 1", width/2+500, height/2+15);
        this.eng1Thetha = 0;
      }
      if(this.engine2 == false)
      {
        fill(255, 255, 0);
        text("ENG SHUTDOWN 2", width/2+500, height/2+30);
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
    text("Engine 1", 75, 180);
    text("Engine 2", 195, 180);
    fill(0);
    ellipse(80, 260, 100, 100);
    ellipse(290, 260, 100, 100);
    stroke(0);
    rect(17, 198, 50, 50);
    stroke(255, 0 ,0);
    line(10, 248, 30, 248);
    fill(0);
    stroke(0);
    rect(137, 198, 50, 50);
    stroke(255, 0 ,0);
    line(130, 248, 150, 248);
    stroke(0, 255, 0);
  }
  
  void checkEngineAnimation()
  {
    
    if(mainSystems.engine1 == false)
    {
      strokeWeight(3);
      stroke(0, 255, 0);
      line(70, 250, 70, 202);
    }
    if(mainSystems.engine2 == false)
    {
      strokeWeight(3);
      stroke(0, 255, 0);
      line(190, 250, 190, 202);
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