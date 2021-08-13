key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_boost = keyboard_check(ord("Q"));
key_shoot = keyboard_check(ord("E"));
key_rocket = keyboard_check(ord("R"));
sprite_index = sShipNormal;


firingDelay = firingDelay - 1;
firingDelayRocket -= 1;

vsp = 5;
x += currentSpeed;
if(key_boost && boostBar > 0)
{
	if (!audio_is_playing(mBoost))
		audio_play_sound(mBoost, 1000, true);
	currentSpeed = constSpeed + boost;
	vsp += boost/2.5;
	sprite_index = sShipBoost;
}
else
{
	audio_stop_sound(mBoost);
	currentSpeed = constSpeed;
}
move = key_up - key_down;
if(move == 1)
{
	y -= vsp;
	if (key_boost && boostBar > 0)
		sprite_index = sShipBoostUpIdle;
	else
		sprite_index = sShipUpIdle;
}
if(move == -1)
{
	y += vsp;
	if (key_boost && boostBar > 0)
		sprite_index = sShipBoostDownIdle;
	else
		sprite_index = sShipDownIdle;
}
if(move == 0)
{
	sprite_index = sShipNormal;
	if(key_boost && boostBar > 0)
	{
		currentSpeed = constSpeed + boost;
		vsp += boost/2.5;
		sprite_index = sShipBoost;
	}
	else
	{
		currentSpeed = constSpeed;
	}
}

shoot = key_shoot - key_rocket;

if(((shoot == 1) || (shoot == 0 && key_shoot)) && (firingDelay < 0) && overheatBar < overheatBar_max)
{
	firingDelay = 12; 
	audio_play_sound(mShooting, 1000, false);
	with(instance_create_layer(x, y, "Bullets", oBullet))
	{
		x = oShip.x;
		y = oShip.y; 
		direction = 0;
		image_angle = 0;
		bulletSpeed = 10 + oShip.currentSpeed;
	}
	overheatBar += 10;
}
if((shoot == -1) && (firingDelayRocket < 0) && firingDelay < 0) && (rockets > 0)
{
	firingDelay = 12;
	firingDelayRocket = 30; 
	audio_play_sound(mRocket, 1000, false);
	with (instance_create_layer(x, y, "Rockets", oRocket))
	{
		x = oShip.x;
		y = oShip.y; 
 
		speed = 7 + oShip.constSpeed;
		direction = 0;
		image_angle = 0;
	}
	rockets--;
}

if(key_boost && boostBar > 0)
{
	boostBar -= 1;
}
if(boostBar <= 0) boostBar = 0;
if(boostBar > boostBar_max) boostBar = boostBar_max;

if(overheatBar < 0 ) overheatBar = 0;
if(overheatBar > overheatBar_max) overheatBar = overheatBar_max;

if (instance_exists(shield))
{
	shield.x = x + 5;
	shield.y = y;
	if (shield.hp <= 0)
		shieldActive = false;
}