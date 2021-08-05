instance_create_layer(shipObj.x+1200, shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2, "Planets", oPlanet);
alarm[1] = room_speed / shipObj.currentSpeed * 10;