void setup()
{
  size(1250,650);
  background(0);
  
  speedTape = new SpeedTape();
  crossHair = new CrossHair();
  mainSystems = new Systems();
  buttons = new Buttons();
  speedIndicator25 = loadFont("FranklinGothic-Book-25.vlw");
}

SpeedTape speedTape;
CrossHair crossHair;
Systems mainSystems;
Buttons buttons;
PFont speedIndicator25;

void draw()
{
  mainSystems.battery = true;
  background(0);
  speedTape.speedTapeIndicator(mainSystems.battery);
  speedTape.speedIndicator(mainSystems.battery);
  speedTape.drawSpeedTape(mainSystems.battery);
  buttons.drawButton("Battery", mainSystems.battery, 20, 20);
  buttons.drawButton("1 Hyd", mainSystems.engine1, 120, 20);
  buttons.drawButton("2 Hyd", mainSystems.engine1, 20, 100);
  buttons.drawButton("1 Pmp", mainSystems.engine1, 120, 100);
  buttons.drawButton("2 Pmp", mainSystems.engine1, 20, 180);
  buttons.drawStarterButton("Eng 1 Start", mainSystems.engine1, 50, 300);
  buttons.drawStarterButton("Eng 2 Start", mainSystems.engine1, 150, 300);
  
  if(frameCount%20 == 0) {
  if (keyPressed == false) {
    if(speedTape.speed > 0) {
      speedTape.speed -= 1;
    }
  }
  }
  
  crossHair.drawCrossHair(mainSystems.battery);
  textSize(15);
  mainSystems.displaySystemAlerts(mainSystems.battery);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      speedTape.increaseSpeed();
    }
  }
}