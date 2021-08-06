/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
place_x = 1200;
place_y = irandom_range(-1, 1)*irandom_range(0, 325)*2;
instance_create_layer(shipObj.x+place_x, shipObj.y+place_y, "Barriers", oBarrier);

alarm[0] = room_speed / shipObj.currentSpeed * 5;

