void setup()
{
  size(1250,650);
  background(0);
  float speedTape;
  speedTape = width/3.5;
  stroke(0, 204, 0);
  line(speedTape, 100, speedTape, 550);
  line(speedTape-60, 100, speedTape, 100);
  line(speedTape-60, 550, speedTape, 550);
  
  fill(0);
  rect(speedTape-60, height/2.15, 50, 50);
  fill(0, 204, 0);
  text("040", speedTape-60, height/2.15);
}

void draw()
{
  
}