place_x = room_width*0.8;
place_y = irandom_range(-1, 1)*irandom_range(0, room_height/2);
instance_create_layer(oShip.x+place_x, oShip.y+place_y, "Enemies", oEnemy);

alarm[2] = room_speed / oShip.currentSpeed * 100;