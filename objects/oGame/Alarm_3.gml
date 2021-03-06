place_x = room_width;
if (!global.multiplayer)
	place_y = oShip.y + irandom_range(-1, 1)*irandom_range(0, room_height/2)*2;
else
	place_y = irandom_range(-1, 1)*irandom_range(0, 350);
choice = irandom_range(0, 2);
if (choice == 0)
	new_item = instance_create_layer(oShip.x+place_x, place_y, "Items", oShieldItem);
else if(choice == 1)
	new_item = instance_create_layer(oShip.x+place_x, place_y, "Items", oRocketItem);
else if (choice == 2)
	new_item = instance_create_layer(oShip.x+place_x, place_y, "Items", oBoostItem)
with (new_item)
{
	tries = 0;
	done = false;
	do {
	    tries += 1;
		x += random_range(0, 200);
		if (!global.multiplayer)
			y = oShip.y+irandom_range(-1, 1)*irandom_range(0, room_height/2)*2*random_range(0.1, 0.8)/random_range(0.1, 0.8);
		else
			y = irandom_range(-1, 1)*random_range(0, 350);
		done = place_free(x, y);
	} until(done or tries > 30);
	if(not done) {
	    instance_destroy();
	}
}
if (!global.multiplayer)
	alarm[3] = room_speed / oShip.currentSpeed * 30;
else
	alarm[3] = room_speed / oShip.currentSpeed * 60;