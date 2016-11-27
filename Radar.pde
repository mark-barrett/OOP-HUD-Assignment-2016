class Radar
{
  float x = 1060;
  float y = 20;
  boolean changeDirection = false;
  boolean status = false;
  
  void drawRadar()
  {
    if(mainSystems.battery == true)
    {
      if(status == true)
      {
        if(this.changeDirection == false)
        {
          stroke(0, 255, 0);
          fill(0);
          rect(1060, 20, 175, 175);
          line(this.x, 20, this.x, 195);
          line(1060, this.y, 1235, this.y);
          this.x++;
          this.y++;
          if(this.x == 1235  && this.y == 195)
          {
            this.changeDirection = true;
          }
        }
        else if(this.changeDirection == true)
        {
          stroke(0, 255, 0);
          fill(0);
          rect(1060, 20, 175, 175);
          line(this.x, 20, this.x, 195);
          line(1060, this.y, 1235, this.y);
          this.x--;
          this.y--;
          if(this.x == 1060 && this.y == 20)
          {
            this.changeDirection = false;
          }
        }
      }
    }
  }
}
  