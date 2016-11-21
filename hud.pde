void setup()
{
  size(1250,650);
  background(0);
  
  speedTape = new SpeedTape();
  crossHair = new CrossHair();
  mainSystems = new Systems();
  battery = new Buttons();
  engine1 = new Buttons();
  engine2 = new Buttons();
  
  speedIndicator25 = loadFont("FranklinGothic-Book-25.vlw");
}

SpeedTape speedTape;
CrossHair crossHair;
Systems mainSystems;

//Loading animation variable
boolean loadingAnimation = false;

//Declare buttons
Buttons battery;
Buttons engine1;
Buttons engine2;

PFont speedIndicator25;

boolean[] keys = new boolean[1000];

void draw()
{
  background(0);
  //Draw the speed tape indicator
  speedTape.speedTapeIndicator(mainSystems.battery);
  
  //Draw the speed indicator (text)
  speedTape.speedIndicator(mainSystems.battery);
  
  //Draw the speed tape
  speedTape.drawSpeedTape(mainSystems.battery);
  
  //Draw battery button
  battery.drawButton("Battery", mainSystems.battery, 20, 20);
  
  //Draw engine buttons
  engine1.drawButton("Eng1", mainSystems.engine1, 120, 20);
  engine2.drawButton("Eng2", mainSystems.engine2, 20, 100);
  
  if(frameCount % 5  == 0) {
    
  if (checkKey('w'))
  {
      speedTape.increaseSpeed();     
  }
  }
    
  if(frameCount%20 == 0) {
  if (keyPressed == false) {
    if(speedTape.speed > 0) {
      speedTape.speed -= 1;
    }
  }
  }
  
  //Draw the crosshair
  crossHair.drawCrossHair(mainSystems.battery);
  textSize(15);
  
  //Display alerts
  mainSystems.displaySystemAlerts(mainSystems.battery);
}

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

void mousePressed()
{
  if(mouseX > 20 && mouseX < 95)
  {
    if(mouseY > 20 && mouseY < 80)
    {
      mainSystems.battery ^= true;
    }
  }
}
boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

void loadingAnimation()
{
  
}