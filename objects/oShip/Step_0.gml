key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space = keyboard_check(vk_space);
sprite_index = sShipNormal;
if(key_space)
{
	currentSpeed = constSpeed + boost;
	sprite_index = sShipBoost;
}
else currentSpeed = constSpeed;
vsp = 5;
if (place_free(x + collisionSpeed, y))
{
	x += currentSpeed;
	if(key_up) y -= vsp;
	if(key_down) y += vsp;
}
else show_message("Game Over");


