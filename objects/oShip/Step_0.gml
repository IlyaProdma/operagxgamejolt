key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space = keyboard_check(vk_space);
key_enter = keyboard_check(vk_enter);
key_shift = keyboard_check(vk_shift);
sprite_index = sShipNormal;


firingDelay = firingDelay - 1;
firingDelayRocket -= 1;

vsp = 5
x += currentSpeed;

move = key_up - key_down;
if(move == 1)
{
	y -= vsp;
	if (key_space)
		sprite_index = sShipBoostUpIdle;
	else
		sprite_index = sShipUpIdle;
}
if(move == -1)
{
	y += vsp;
	if (key_space)
		sprite_index = sShipBoostDownIdle;
	else
		sprite_index = sShipDownIdle;
}
if(move == 0)
{
	sprite_index = sShipNormal;
	if(key_space)
	{
		currentSpeed = constSpeed + boost;
		vsp += boost/2.5;
		sprite_index = sShipBoost;
	}
	else currentSpeed = constSpeed;
}

shoot = key_enter - key_shift;

if(((shoot == 1) || (shoot == 0 && key_enter)) && (firingDelay < 0))
{
	firingDelay = 12; 
	audio_play_sound(mShooting, 1000, false);
	instance_create_layer(x, y, "Bullets", oBullet)
}
if((shoot == -1) && (firingDelayRocket < 0) && firingDelay < 0)
{
	firingDelay = 12;
	firingDelayRocket = 30; 
	audio_play_sound(mRocket, 1000, false);
	instance_create_layer(x, y, "Rockets", oRocket)

}




