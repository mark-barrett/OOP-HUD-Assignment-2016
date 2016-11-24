class RollIndicator
{
  PShape bottomRoll;
  
  void drawRollIndicator(boolean power)
  {
    if(power == true)
    {
      stroke(0, 255, 0);
      triangle(width/2, 40, width/2-10, 20, width/2+10, 20);
      bottomRoll = createShape();
      bottomRoll.beginShape();
      bottomRoll.vertex(0,0);
      bottomRoll.vertex(0+10, 20);
      bottomRoll.vertex(0-10, 20);
      bottomRoll.endShape(CLOSE);
      
      pushMatrix();
      translate(width/2, 50);
      shape(bottomRoll, 0,0);
      popMatrix();
         
    }
    }
}