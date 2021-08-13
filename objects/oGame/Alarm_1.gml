place_x = room_width;
place_y = irandom_range(-1, 1)*irandom_range(0, room_height/2)*2;
new_planet = instance_create_layer(oShip.x+place_x, oShip.y+place_y, "Planets", oPlanet);
with (new_planet)
{
	tries = 0;
	done = false;
	do {
	    tries += 1;
		x += random_range(0, 200);
	    y = oShip.y+irandom_range(-1, 1)*irandom_range(0, room_height/2)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
		done = place_free(x, y);
	} until(done or tries > 20);
	if(not done) {
	    instance_destroy();
	}
}
place_x = random_range(200, 400);
place_y = random_range(room_height, room_height*1.5);
new_planet = instance_create_layer(oShip.x+place_x, oShip.y+place_y, "Planets", oPlanet);
with (new_planet)
{
	tries = 0;
	done = false;
	do
	{
		tries += 1;
		x += random_range(100, 200);
		y = oShip.y + random_range(room_height, room_height*1.5);
		done = place_free(x, y);
	} until(done or tries > 20);
	if (not done)
	{
		instance_destroy();
	}
}
place_x = random_range(200, 400);
place_y = random_range(room_height, room_height*1.5);
new_planet = instance_create_layer(oShip.x+place_x, oShip.y-place_y, "Planets", oPlanet);
with (new_planet)
{
	tries = 0;
	done = false;
	do
	{
		tries += 1;
		x += random_range(100, 200);
		y = oShip.y - random_range(room_height, room_height*1.5);
		done = place_free(x, y);
	} until(done or tries > 20);
	if (not done)
	{
		instance_destroy();
	}
}
alarm[1] = room_speed / oShip.currentSpeed * 10;