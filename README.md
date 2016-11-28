# OOP-HUD-Assignment-2016
The HUD Assignment for OOP 2016.

The HUD in this assignment is based on the HUD found onboard some of the Boeing 737NG's and a HUD you would find in a modern day/conceptual fighter get. They did not originally get fitted to the 737NG's, and only recently have they been offered as an option to airlines that are ordering these aircraft. These types of HUD's are becoming a vital part in aviation, and have huge advantages that have been conceptualised for the future.

### Features (Which I think are pretty cool) ###
- **Procedural animations upon startup.** "Intialising systems", display EICAS (Engine Indicator and Crew Alerting System), animated degree lines.

- User input (W), (J, L), (I, K) for speed, roll and pitch respectively.

- **Speed and Altitude tapes.** On the left hand side there is the speed tape. This displays the current IAS (Indicated Airspeed). The speed tape will also move down when speeding up as the indicator climbs through the tape. When slowing down the tape will move in the opposite direction. The altitude tape displays the current altitude. Like the speed tape, it too will move up and down depending on if it is climbing or not.

- **Vertical speed indicator (V/S).** This is located to the right of the altitude indicator. This indicates the rate of ascent or descent. If the rate is high then the arm will move up, it is is low then it will move down.

- **Realistic artificial horizon (blue and brown).** Used by the pilot in order to orientate the aircraft with the desired roll and or pitch without visual aids. It will rotate when the user alters the roll value using the aforementioned mentioned keys. It is also moved when pitch is introduced. This is achieved by rotating the artificial horizon around it origin using rotate() and push and pop matrix.

- **A cross hair.** to signify which way the aircraft is pointing and to illustrate important parts such as; The nose of the aircraft, and its wings, both port and starboard. This stays stationary as the artificial horizon moves.

- **Battery switch.** which is turned on when starting up the hud. This runs with a standby power sound. Powering on the battery is essential for all other systems to work.

- **Engine 1 & 2 switches.** These startup the engines on the aircraft. The aircraft will not move without them. Engine start up is animated.

- **Gear switch.** with realistic sounds. Cannot retracted gear if on the ground.

- **Realistic physics.** Vertical speed is determined upon how fast the aircraft is travelling, at what pitch, and for how long. Using this, I can calculate the aircrafts altitude and the aircraft will respond in a realistic fashion. Here are some example; High speed and low pitch, the aircraft will climb slowly. High speed, high pitch, the aircraft will climb fast. Low speed, low pitch, the aircraft will climb slowly. Low speed high pitch, the aircraft will stall and altitude will decrease.

- **EICAS and warnings.** The EICAS (Engine Indicator and Crew Avoidance System) displays current problems/errors onboard the aircraft. If you stall or go overspeed the warning will show there and an alert will sound.
