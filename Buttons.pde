class Buttons
{
  void drawButton(String name, boolean status, float x, float y)
  {
    String indicator;
    noFill();
    rect(x, y, 80, 30);
    fill(255);
    text(name, x, y+25);
    if(status == true)
    {
      indicator = "On";
      fill(0, 255, 0);
      rect(x, y+30, 80, 30);
      fill(255);
      text(indicator, x+25, y+55);
    }
    else
    {
      indicator = "Off";
      fill(255, 0, 0);
      rect(x, y+30, 80, 30);
      fill(255);
      text(indicator, x+25, y+55);
     
    }
  }
  
  void drawStarterButton(String name, boolean status, float x, float y)
  {
    noFill();
    textSize(12);
    text("Off", x-25, y-25);
    ellipse(x, y, 40, 40);
    text("On", x, y-25);
    text("Start", x+25, y-25);
    line(x, y, x-20, y-20);
    text(name, x-25, y+35);
  }
}