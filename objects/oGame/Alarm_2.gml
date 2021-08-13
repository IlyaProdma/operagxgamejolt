place_x = room_width*0.8;
place_y = irandom_range(-1, 1)*random_range(0, 370);
if (!global.multiplayer)
	instance_create_layer(oShip.x+place_x, oShip.y + place_y, "Enemies", oEnemy);
else
	instance_create_layer(oShip.x+place_x, place_y, "Enemies", oEnemy);

if (!global.multiplayer)
	alarm[1] = room_speed / oShip.currentSpeed * 100;
else
	alarm[1] = room_speed / oShip.currentSpeed * 200;