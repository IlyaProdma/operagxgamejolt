/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
bulletSpeed = 10 + oShip.currentSpeed;
x += bulletSpeed;

if((x - oShip.x) > 1360) instance_destroy();