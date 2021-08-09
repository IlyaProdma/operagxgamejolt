place_xh = 1400;
place_yh = irandom_range(-1, 1)*irandom_range(0, 325)*2;
new_black_hole = instance_create_layer(shipObj.x+place_xh, shipObj.y+place_yh, "BlackHoles", oBlackHole);
with (new_black_hole)
{
	triesh = 0;
	doneh = false;
	do {
	    triesh += 1;
		x += random_range(0, 200);
	    y = shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
		doneh = place_free(x, y);
	} until(doneh or triesh > 20);
	if(not doneh) {
	    instance_destroy();
	}
}
place_xh = random_range(200, 400);
place_yh = random_range(room_height, room_height*1.5);
new_black_hole = instance_create_layer(shipObj.x+place_xh, shipObj.y+place_yh, "BlackHoles", oBlackHole);
with (new_black_hole)
{
	triesh = 0;
	doneh = false;
	do
	{
		triesh += 1;
		x += random_range(100, 200);
		y = shipObj.y + random_range(room_height, room_height*1.5);
		doneh = place_free(x, y);
	} until(doneh or triesh > 20);
	if (not doneh)
	{
		instance_destroy();
	}
}
place_xh = random_range(200, 400);
place_yh = random_range(room_height, room_height*1.5);
new_black_hole = instance_create_layer(shipObj.x+place_xh, shipObj.y-place_yh, "BlackHoles", oBlackHole);
with (new_black_hole)
{
	triesh = 0;
	doneh = false;
	do
	{
		triesh += 1;
		x += random_range(100, 200);
		y = shipObj.y - random_range(room_height, room_height*1.5);
		doneh = place_free(x, y);
	} until(doneh or triesh > 20);
	if (not doneh)
	{
		instance_destroy();
	}
}
alarm[4] = room_speed / shipObj.currentSpeed * 10;
