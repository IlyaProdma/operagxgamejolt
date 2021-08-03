/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

//barrierGenerator(oShip.x, oShip.y);
instance_create_depth(oShip.x+1000, irandom_range(0, 325)*2, -10000, oBarrier);
alarm[0] = room_speed / oShip.currentSpeed *2;