class ArtificialHorizon
{
  PShape sky;
  PShape ground;
  
  void drawHorizon(boolean power)
  {
    if(power == true)
    {
      //Create sky shape
      fill(1, 152, 199);
      noStroke();
      sky = createShape();
      sky.beginShape();
      sky.vertex(0,0);
      sky.vertex(550, 0);
      sky.vertex(550, 230);
      sky.vertex(0, 230);
      sky.endShape(CLOSE);
      
      pushMatrix();
      translate(width/3.5+2, 100);
      shape(sky, 0, 0);
      popMatrix();
      
      //Create ground shpae
      fill(174, 98, 0);
      noStroke();
      ground = createShape();
      ground.beginShape();
      ground.vertex(0,0);
      ground.vertex(550, 0);
      ground.vertex(550, 226);
      ground.vertex(0, 226);
      ground.endShape(CLOSE);
      
      pushMatrix();
      translate(width/3.5+2, height/2);
      shape(ground, 0, 0);
      popMatrix();
      
      stroke(0, 255, 0);
      fill(0, 255, 0);
    }
    
  }
  void drawDegrees(boolean power) 
  {
    if(power == true && mainSystems.finishedAnimation == true)
    {
      if(x != 120)
      {
        strokeWeight(1);
        stroke(0, 255, 0);
        line(width/2-120, height/2-100, width/2+x, height/2-100);
        line(width/2+x, height/2+100, width/2-x, height/2+100);
        line(width/2-120, height/2-200, width/2+x, height/2-200);
        line(width/2+x, height/2+200, width/2-x, height/2+200);
        x+=2;
      }
      else
      {
        strokeWeight(1);
        line(width/2-120, height/2-100, width/2+120, height/2-100);
        text("10", width/2+130, height/2-90);
        text("10", width/2-160, height/2-90);
        line(width/2+120, height/2+100, width/2-120, height/2+100);
        text("10", width/2+130, height/2+110);
        text("10", width/2-160, height/2+110);
        line(width/2-120, height/2-200, width/2+120, height/2-200);
        text("20", width/2+130, height/2-190);
        text("20", width/2-160, height/2-190);
        line(width/2-120, height/2+200, width/2+120, height/2+200);
        text("20", width/2+130, height/2+210);
        text("20", width/2-160, height/2+210);
      }
    }
  }
}