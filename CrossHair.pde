class CrossHair
{
  void drawCrossHair()
  {
    rect(width/2, height/2, 10, 10);
    rect(width/2-95, height/2, 80, 10);
    rect(width/2-25, height/2, 10, 30);
    rect(width/2+25, height/2, 80, 10);
    rect(width/2+25, height/2, 10, 30);
  }
}