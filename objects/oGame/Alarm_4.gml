place_x = 1400;
place_y = irandom_range(-1, 1)*irandom_range(0, 325)*2;
new_black_hole = instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "BlackHoles", oBlackHole);
with (new_black_hole)
{
	tries = 0;
	done = false;
	do {
	    tries += 1;
		x += random_range(0, 200);
	    y = shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
		done = place_free(x, y);
	} until(done or tries > 20);
	if(not done) {
	    instance_destroy();
	}
}
place_x = random_range(200, 400);
place_y = random_range(room_height, room_height*1.5);
new_black_hole = instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "BlackHoles", oBlackHole);
with (new_black_hole)
{
	tries = 0;
	done = false;
	do
	{
		tries += 1;
		x += random_range(100, 200);
		y = shipObj.y + random_range(room_height, room_height*1.5);
		done = place_free(x, y);
	} until(done or tries > 20);
	if (not done)
	{
		instance_destroy();
	}
}
place_x = random_range(200, 400);
place_y = random_range(room_height, room_height*1.5);
new_black_hole = instance_create_layer(shipObj.x+place_x, shipObj.y-place_y, "BlackHoles", oBlackHole);
with (new_black_hole)
{
	tries = 0;
	done = false;
	do
	{
		tries += 1;
		x += random_range(100, 200);
		y = shipObj.y - random_range(room_height, room_height*1.5);
		done = place_free(x, y);
	} until(done or tries > 20);
	if (not done)
	{
		instance_destroy();
	}
}
alarm[4] = room_speed / shipObj.currentSpeed * 10;
