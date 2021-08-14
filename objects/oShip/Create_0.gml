constSpeed = 5;
vsp = 0;
boost = 4 + constSpeed/3;
currentSpeed = 0;
firingDelay = 0;
firingDelayRocket = 0;
gameOver = false;
shieldActive = true;
rockets = 1;

if (!global.multiplayer)
{
	boostBar = 212;
	boostBar_max = 212;
	boostBar_width = 212;
}
else
{
	boostBar = 450;
	boostBar_max = 450;
	boostBar_width = 450;
}
boostBar_height = 19;
boostBar_x = 0;
boostBar_y = room_height * 0.9;

overheatBar = 0;
overheatBar_max = 224;
overheatBar_width = 224;
overheatBar_height = 18;
overheatBar_x = 0;
overheatBar_y = room_height * 0.8;

shield = instance_create_layer(x + 5, y, "Shields", oShield);
nearBorder = false;
boostActivated = false;

alarm[0] = room_speed;
canshoot = false;
