class CrossHair
{
  void drawCrossHair(boolean power)
  {
    if(power == true)
    {
    fill(0);
    rect(width/2, height/2, 10, 10);
    rect(width/2-95, height/2, 80, 10);
    rect(width/2-25, height/2, 10, 30);
    rect(width/2+25, height/2, 80, 10);
    rect(width/2+25, height/2, 10, 30);
    }
    else
    {
      textSize(25);
      fill(0, 255, 0);
      textAlign(CENTER, CENTER);
      text("Standby..", width/2, height/2);
    }
  }
}