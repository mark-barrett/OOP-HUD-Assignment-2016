class Buttons
{ 
  void drawButton(String name, boolean status, float x, float y)
  {
    if(status == false)
    {
      stroke(0, 255, 0);
      fill(0);
      rect(x, y, 75, 30);
      fill(255);
      textSize(20);
      textAlign(CENTER, CENTER);
      text(name, x+38, y+10);;
      fill(255, 0, 0);
      rect(x, y+30, 75, 30);
      fill(255);
      text("Off", x+38, 64);
    }
    else if(status == true)
    {
      stroke(0, 255, 0);
      fill(0);
      rect(x, y, 75, 30);
      fill(255);
      textSize(23);
      textAlign(CENTER, CENTER);
      text(name, x+38, y+10);;
      fill(0, 255, 0);
      rect(x, y+30, 75, 30);
      fill(255);
      text("On", x+38, 64);    
    }
      
  }
}