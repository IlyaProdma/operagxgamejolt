key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space = keyboard_check(vk_space);
if(key_space)
{
	currentSpeed = constSpeed + boost;
}
else currentSpeed = constSpeed;
vsp = 5;
x += currentSpeed;
if(key_up) y -= vsp;
if(key_down) y += vsp;


