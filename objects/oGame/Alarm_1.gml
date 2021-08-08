place_x = 1400;
place_y = irandom_range(-1, 1)*irandom_range(0, 325)*2;
new_planet = instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "Planets", oPlanet);
with (new_planet)
{
	tries = 0;
	done = false;
	do {
	    tries += 1;
		x += random_range(0, 200);
	    y = shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
	    //done = !place_meeting(x, y, new_barrier);
		done = place_free(x, y);
	} until(done or tries > 20);
	if(not done) {
	    instance_destroy();
	}
}
alarm[1] = room_speed / shipObj.currentSpeed * 10;