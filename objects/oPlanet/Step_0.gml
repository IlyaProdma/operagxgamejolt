/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (x - oShip.x < -300) instance_destroy();
var oX, oY;
oX = x;
oY = y;
with (oShip) {
	dist = point_distance(x, y, oX, oY);
	if(dist <= 150)
		motion_add(point_direction(x, y, oX, oY), 0.05);
};