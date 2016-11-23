class CrossHair
{
  PShape crosshair;
  
  void drawCrossHair(boolean power)
  {
    if(power == true)
    {
      strokeWeight(2);
      noFill();
      crosshair = createShape();
      crosshair.beginShape();
      crosshair.vertex(5,10);
      crosshair.vertex(5,5);
      crosshair.vertex(105, 5);
      crosshair.vertex(122.5,-10);
      crosshair.vertex(140, 5);
      crosshair.vertex(240, 5);
      crosshair.vertex(240, 10);
      crosshair.endShape();
      
      pushMatrix();
      translate(width/2, height/2);
      shape(crosshair, -122.5, -10);
      popMatrix();
      
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