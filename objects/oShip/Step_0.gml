 key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space = keyboard_check(vk_space);
key_enter = keyboard_check(vk_enter);
sprite_index = sShipNormal;

firingDelay = firingDelay - 1;

if(key_space)
{
	currentSpeed = constSpeed + boost;
	sprite_index = sShipBoost;
}
else currentSpeed = constSpeed;
vsp = 5
x += currentSpeed;
if(key_up)
{
	y -= vsp;
	if (key_space)
		sprite_index = sShipBoostUpIdle;
	else
		sprite_index = sShipUpIdle;
}
if(key_down)
{
	y += vsp;
	if (key_space)
		sprite_index = sShipBoostDownIdle;
	else
		sprite_index = sShipDownIdle;
}
if((key_enter) && (firingDelay < 0))
{
	firingDelay = 5; 
	audio_play_sound(mShooting, 1000, false);
	with(instance_create_layer(x, y, "Bullets", oBullet))
	{
		speed = 12;
		direction = other.image_angle;
		image_angle = direction;
	} 
}



