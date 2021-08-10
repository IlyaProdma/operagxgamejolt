place_x = room_width*0.9;
place_y = irandom_range(-1, 1)*irandom_range(0, room_height/2)*2;
instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "Enemies", oEnemy);
alarm[2] = room_speed / shipObj.currentSpeed * 100;