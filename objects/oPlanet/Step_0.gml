/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var oX, oY;
oX = x;
oY = y;
with (oShip) {
	dist = point_distance(x, y, oX, oY);
	if(dist <= 150)
		move_towards_point(oX, oY, 2);
};