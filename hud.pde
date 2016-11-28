void setup()
{
  size(1250,650);
  background(0);
  
  speedTape = new SpeedTape();
  altitudeTape = new AltitudeTape();
  crossHair = new CrossHair();
  mainSystems = new Systems();
  artificialHorizon = new ArtificialHorizon();
  rollIndicator = new RollIndicator();
  battery = new Buttons();
  engine1 = new Buttons();
  engine2 = new Buttons();
  gear = new Buttons();
  radarButton = new Buttons();
  radar = new Radar();
  
  buttons.add(battery);
  buttons.add(engine1);
  buttons.add(engine2);
  buttons.add(gear);
  buttons.add(radarButton);
  
  speedIndicator25 = loadFont("FranklinGothic-Book-25.vlw");
  
  //Importing sound
  switchSound = new SoundFile(this, "switch.wav");
  batterySound = new SoundFile(this, "battery.wav");
  bankSound = new SoundFile(this, "bank_angle.wav");
  gearLever = new SoundFile(this, "gear.wav");
  gearUp = new SoundFile(this, "gearup.wav");
  stall = new SoundFile(this, "stall.wav");
}

SpeedTape speedTape;
AltitudeTape altitudeTape;
ArtificialHorizon artificialHorizon;
CrossHair crossHair;
Systems mainSystems;
RollIndicator rollIndicator;
Radar radar;

float pitch = 0;
float roll = 0;

import processing.sound.*;

float timeDelta = 1.0f / 60.00f;

//Declaring sounds
SoundFile switchSound;
SoundFile batterySound;
SoundFile bankSound;
SoundFile gearLever;
SoundFile gearUp;
SoundFile stall;

//Loading animation variable
boolean loadingAnimation = false;
boolean batteryPressedSound = false;
boolean playOnce = true;

//Declare buttons
Buttons battery;
Buttons engine1;
Buttons engine2;
Buttons gear;
Buttons radarButton;

int x = 0;

PFont speedIndicator25;

boolean[] keys = new boolean[1000];

//Buttons array list
ArrayList<Buttons> buttons = new ArrayList<Buttons>();

void draw()
{
  
  if(batteryPressedSound == true)
  {
    println(frameCount);
    if(playOnce == true)
    {
      batterySound.play();
      playOnce = false;
    }
    if (frameCount % 835 == 0)
    {
      batterySound.play();
    }
  }
  if(frameCount % 60 == 0)
  {
    if(roll > 0.8 || roll < -0.8)
    {
      bankSound.play();
    }
  }
  background(0);
  //Draw Horizon
  artificialHorizon.drawHorizon(mainSystems.battery);
  
  //Draw degrees
  artificialHorizon.drawDegrees(mainSystems.battery);
  
  //Draw rect to block out artificial horizon on speed side
  fill(0);
  stroke(0);
  rect(0,0,speedTape.speedTape, height);
  stroke(0, 255, 0);
  
  //Draw rect to block out artificial horizon on altitude side
  fill(0);
  stroke(0);
  rect(altitudeTape.altitudeTape, 0 ,500, height);
  stroke(0, 255, 0);
  
  //Draw the speed tape indicator
  speedTape.speedTapeIndicator(mainSystems.battery);
  
  //Draw the speed indicator (text)
  speedTape.speedIndicator(mainSystems.battery);
  
  //Draw the speed tape
  speedTape.drawSpeedTape(mainSystems.battery);
  
  //Draw the altitude tape
  altitudeTape.drawAltitudeTape(mainSystems.battery);
  
  altitudeTape.drawAltitudeTapeIndicator(mainSystems.battery);
  
  altitudeTape.drawAltitudeIndicator(mainSystems.battery);
  
  altitudeTape.verticalSpeed();
  
  noStroke();
  fill(0);
  rect(200, 0, width-200, 99);
  rect(0, height-99, width, 99);
  
  rollIndicator.drawRollIndicator(mainSystems.battery);
  
  //Draw battery button
  battery.drawButton("Battery", mainSystems.battery, 20, 20);
  
  //Draw engine buttons
  engine1.drawButton("Eng1", mainSystems.engine1, 120, 20);
  engine2.drawButton("Eng2", mainSystems.engine2, 20, 100);
  
  gear.drawButton("Gear", mainSystems.gear, 120, 100);
  
  radarButton.drawButton("Radar", radar.status, 1160, 200);
  
  //Draw engine indicators
  mainSystems.drawEngineIndicators();
  
  //Check for animation
  mainSystems.checkEngineAnimation();
  
  //Display alerts
  mainSystems.displaySystemAlerts(mainSystems.battery);
  
  
  if(mainSystems.animate == true && mainSystems.battery == true)
  {
    mainSystems.animateEICAS();
    mainSystems.x--;
  }
  
  if(frameCount % 5  == 0) {
    
  if (checkKey('w'))
  {
    if(mainSystems.engine1 == true && mainSystems.engine2 == true)
    {
      speedTape.increaseSpeed(); 
    }
  }
  
  if(speedTape.speed > 0)
  {
    if(mainSystems.engine1 == false || mainSystems.engine2 == false)
    {
      speedTape.speed -= 1;
    }
  }
  }
  
  altitudeTape.calculateAltitude();
  
  if(checkKey('i'))
  {
    if(speedTape.speed > 140)
    {
      pitch += 0.75;
    }
  }
  
  if(checkKey('k'))
  {
    pitch -= 0.75;
  }
  
  if(checkKey('j'))
  {
    if(altitudeTape.altitude > 0)
    {
      roll += 0.005;
    }
  }
  
  if(checkKey('l'))
  {
    if(altitudeTape.altitude > 0)
    {
      roll -= 0.005;
    }
  }
    
    
  if(frameCount%20 == 0) {
  if (keyPressed == false) {
    if(speedTape.speed > 0) {
      speedTape.speed -= 1;
    }
  }
  }
  
  if(speedTape.speed > 140 && mainSystems.stall == true)
  {
    mainSystems.stall = false;
  }
  //Draw the crosshair
  crossHair.drawCrossHair(mainSystems.battery);
  textSize(15);
  
  //If the battery has been pressed the start the loading animation
  if(loadingAnimation == true)
  {
    loadingAnimation();
  }
  
  if(mainSystems.battery == true)
  {
    fill(0, 255, 0);
    textSize(25);
    text("ALT", altitudeTape.altitudeTape+25, 575);
    text("IAS", speedTape.speedTape-40, 575);
    textSize(15);
  }
  radar.drawRadar();
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
  //Battery on
  if(mouseX > 20 && mouseX < 95)
  {
    if(mouseY > 20 && mouseY < 80)
    {
      if(mainSystems.battery == false)
      {
        loadingAnimation = true;
        switchSound.play();
        batteryPressedSound = true;
      }
      else if(mainSystems.battery == true)
      {
        mainSystems.battery = false;
      }
    }
  }
  
  //Eng1 on
  if(mouseX > 120 && mouseX < 195)
  {
    if(mouseY > 20 && mouseY < 80)
    {
      if(mainSystems.battery == true)
      {
        mainSystems.engine1 ^= true;
        switchSound.play();
      }
    }
  }
  //Eng 2 on
  if(mouseX > 20 && mouseX < 95)
  {
    if(mouseY > 100 && mouseY < 160)
    {
      if(mainSystems.battery == true)
      {
        mainSystems.engine2 ^= true;
        switchSound.play();
      }
    }
  }
  
  //Raise gear
  if(mouseX > 120 && mouseX < 195)
  {
    if(mouseY > 100 && mouseY < 160)
    {
      if(mainSystems.battery == true && altitudeTape.altitude > 0)
      {
        mainSystems.gear ^= true;
        gearLever.play();
        gearUp.play();
      }
    }
  }
  
  //Radar on
  if(mouseX > 1160 && mouseX < 1235)
  {
    if(mouseY > 200 & mouseY < 265)
    {
      radar.status ^= true;
      switchSound.play();
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
  fill(0);
  stroke(0);
  rect(width/2-100, height/2-100, 200, 200);
  stroke(0, 255, 0);
  fill(0, 255, 0);
  textAlign(LEFT);
  text ("Intialising Systems " + int((frameCount%301) / 3) + "%", width/2-120, height/2-8);
  rect(500, height/2-2, 204, 24);
  fill(0);
  int fillX = ((frameCount%301) / 3 * 2);
  rect(700, height/2, fillX-200, 20);
  if(frameCount%301 == 0)
  {
    loadingAnimation = false;
    mainSystems.battery = true;
  }
}