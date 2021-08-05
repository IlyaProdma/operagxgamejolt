/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
instance_create_layer(shipObj.x+1200, shipObj.y+irandom_range(-1, 1)*irandom_range(0, 325)*2, "Barriers", oBarrier);

alarm[0] = room_speed / shipObj.currentSpeed *  2;

shipObj.constSpeed += 0.01;