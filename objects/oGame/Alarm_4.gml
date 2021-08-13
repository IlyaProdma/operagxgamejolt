place_xh = room_width;
if (!global.multiplayer)
	place_yh = oShip.y+irandom_range(-1, 1)*irandom_range(0, room_height/2)*2;
else
	place_yh = irandom_range(-1, 1)*irandom_range(0, 370);
new_black_hole = instance_create_layer(oShip.x+place_xh, place_yh, "Planets", oBlackHole);
with (new_black_hole)
{
	triesh = 0;
	doneh = false;
	do {
	    triesh += 1;
		x += random_range(0, 200);
		if (!global.multiplayer)
			y = oShip.y+irandom_range(-1, 1)*irandom_range(0, room_height/2)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
		else
			y = irandom_range(-1, 1)*random_range(0, 370);
		doneh = place_free(x, y);
	} until(doneh or triesh > 20);
	if(not doneh) {
	    instance_destroy();
	}
}
if (!global.multiplayer)
{
	place_xh = random_range(200, 400);
	place_yh = random_range(room_height, room_height*1.5);
	new_black_hole = instance_create_layer(oShip.x+place_xh, oShip.y+place_yh, "Planets", oBlackHole);
	with (new_black_hole)
	{
		triesh = 0;
		doneh = false;
		do
		{
			triesh += 1;
			x += random_range(100, 200);
			y = oShip.y + random_range(room_height, room_height*1.5);
			doneh = place_free(x, y);
		} until(doneh or triesh > 20);
		if (not doneh)
		{
			instance_destroy();
		}
	}
	place_xh = random_range(200, 400);
	place_yh = random_range(room_height, room_height*1.5);
	new_black_hole = instance_create_layer(oShip.x+place_xh, oShip.y-place_yh, "Planets", oBlackHole);
	with (new_black_hole)
	{
		triesh = 0;
		doneh = false;
		do
		{
			triesh += 1;
			x += random_range(100, 200);
			y = oShip.y - random_range(room_height, room_height*1.5);
			doneh = place_free(x, y);
		} until(doneh or triesh > 20);
		if (not doneh)
		{
			instance_destroy();
		}
	}
}
alarm[4] = room_speed / oShip.currentSpeed * 150;