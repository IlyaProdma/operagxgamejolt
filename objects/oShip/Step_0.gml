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
if(key_up && place_free(x, y - collisionSpeed)) y -= vsp;
if(key_down && place_free(x, y + collisionSpeed)) y += vsp;

if((key_enter) && (firingDelay < 0))
{
	firingDelay = 5; 
	with(instance_create_layer(x, y, "Bullets", oBullet))
	{
		speed = 12;
		direction = other.image_angle;
		image_angle = direction;
	} 
} 
dist = point_distance(oShip.x, oShip.y, oPlanet.x, oPlanet.y); 
if(dist <= 500) grav = 2;
else grav = 0;
move_towards_point(oPlanet.x, oPlanet.y, grav); 

