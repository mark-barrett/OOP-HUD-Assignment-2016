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
        sky.vertex(0,-2000);
        sky.vertex(550, -2000);
        sky.vertex(550, 230);
        sky.vertex(0, 230);
        sky.endShape(CLOSE);
        
       //Create ground shpae
        fill(174, 98, 0);
        noStroke();
        ground = createShape();
        ground.beginShape();
        ground.vertex(0,0);
        ground.vertex(550, 0);
        ground.vertex(550, 2000);
        ground.vertex(0, 2000);
        ground.endShape(CLOSE);
        
      if(pitch == 0)
      {
        pushMatrix();
        translate(width/3.5+2, 100);
        shape(sky, 0, 0);
        popMatrix();
        
        pushMatrix();
        translate(width/3.5+2, height/2);
        shape(ground, 0, 0);
        popMatrix();
        
        stroke(0, 255, 0);
        fill(0, 255, 0);
      }
      else
      {
        pushMatrix();
        translate(width/3.5+2, 100+pitch);
        shape(sky, 0, 0);
        popMatrix();
        
        pushMatrix();
        translate(width/3.5+2, height/2+pitch);
        shape(ground, 0, 0);
        popMatrix();
        
        stroke(0, 255, 0);
        fill(0, 255, 0);
      }
        
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
        line(width/2-120, height/2-100+pitch, width/2+120, height/2-100+pitch);
        text("10", width/2+130, height/2-90+pitch);
        text("10", width/2-160, height/2-90+pitch);
        line(width/2+120, height/2+100+pitch, width/2-120, height/2+100+pitch);
        text("10", width/2+130, height/2+110+pitch);
        text("10", width/2-160, height/2+110+pitch);
        line(width/2-120, height/2-200+pitch, width/2+120, height/2-200+pitch);
        text("20", width/2+130, height/2-190+pitch);
        text("20", width/2-160, height/2-190+pitch);
        line(width/2-120, height/2+200+pitch, width/2+120, height/2+200+pitch);
        text("20", width/2+130, height/2+210+pitch);
        text("20", width/2-160, height/2+210+pitch);
      }
    }
  }
}