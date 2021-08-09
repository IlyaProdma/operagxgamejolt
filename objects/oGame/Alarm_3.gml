place_x = 1200;
place_y = irandom_range(-1, 1)*irandom_range(0, 325)*2;
choice = irandom_range(0, 1);
if (choice == 0)
	new_item = instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "Items", oShieldItem);
else
	new_item = instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "Items", oRocketItem);
with (new_item)
{
	tries = 0;
	done = false;
	do {
	    tries += 1;
		x += random_range(0, 200);
	    y = shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
		done = place_free(x, y);
	} until(done or tries > 10);
	if(not done) {
	    instance_destroy();
	}
}
alarm[3] = room_speed / shipObj.currentSpeed * 10;