class Systems
{
  boolean battery;
  boolean engine1;
  boolean engine2;
  
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
    if(this.engine1 == false && this.engine2 == false)
    {
      fill(255, 255, 0);
      text("ENG SHUTDOWN", width/2+400, height/2+15);
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
  
}