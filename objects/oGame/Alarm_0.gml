/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
instance_create_layer(oShip.x+1000, irandom_range(0, 325)*2, "Barriers", oBarrier);
alarm[0] = room_speed / oShip.currentSpeed *  2;
oShip.constSpeed += 0.01;