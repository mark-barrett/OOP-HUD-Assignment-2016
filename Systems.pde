class Systems
{
  boolean battery;
  boolean engine1, engine2;
  boolean engine1HydraulicPumps, engine2HydraulicPumps;
  boolean engine1FuelPump, engine2FuelPump;
  
  Systems()
  {
    this.battery = false;
    this.engine1 = this.engine2 = false;
    this.engine1HydraulicPumps = this.engine2HydraulicPumps = false;
    this.engine1FuelPump = this.engine2FuelPump = false;
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
    if(this.engine1FuelPump == false && this.engine2FuelPump == false)
    {
      fill(255, 255, 0);
      text("FUEL PRESS ENG L + R", width/2+400, height/2+30); 
    }
    if(this.engine1HydraulicPumps == false && this.engine2HydraulicPumps == false)
    {
      fill(255, 255, 0);
      text("HYD PRESS SYS L + C + R", width/2+400, height/2+45);
    }
    }
  }
  
  void powerOnBattery()
  {
    this.battery = true;
  }
  
  void startEngine1()
  {
    if(this.battery == true && this.engine1FuelPump == true)
    {
      this.engine1 = true;
    }
  }
  
}