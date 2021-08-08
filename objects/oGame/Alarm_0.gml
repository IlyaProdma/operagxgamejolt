place_x = 1400;
place_y = irandom_range(-1, 1)*irandom_range(0, 325)*2;
var new_barrier = instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "Barriers", oBarrier);
with (new_barrier)
{
	tries = 0;
	done = false;
	do
	{
		tries += 1;
		x += random_range(0, 200);
		y = shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
		done = place_free(x, y);
	} until(done or tries > 80);
	if (not done)
	{
		instance_destroy();
	}
}
to_spawn_planet = irandom_range(-10, 5);
if (to_spawn_planet > 0)
{
	new_planet = instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "Planets", oPlanet);
	with (new_planet)
	{
	    tries = 0;
	    done = false;
	    do {
	        tries += 1;
			x += random_range(0, 200);
	        y = shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
	        done = !place_meeting(x, y, new_barrier);
	    } until(done or tries > 20);
	    if(not done) {
	        instance_destroy();
	    }
	}
}
alarm[0] = room_speed / shipObj.currentSpeed * 3;

