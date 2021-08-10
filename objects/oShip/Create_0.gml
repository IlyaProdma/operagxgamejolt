constSpeed = 5;
vsp = 0;
boost = 4 + constSpeed/3;
currentSpeed = 0;
firingDelay = 0;
firingDelayRocket = 0;
gameOver = false;
shieldActive = true;
instance_create_layer(x, y, "Instances", oShield);
rockets = 1;

boostBar = 500;
boostBar_max = 500;
boostBar_width = 500;
boostBar_height = 20;
boostBar_x = 0;
boostBar_y = room_height * 0.9;

overheatBar = 500;
overheatBar_max = 500;
overheatBar_width = 500;
overheatBar_height = 20;
overheatBar_x = 0;
overheatBar_y = room_height * 0.8;

alarm[0] = room_speed;