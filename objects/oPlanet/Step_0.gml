/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var oX, oY, spd;
oX = x;
oY = y;

dist = point_distance(x, y, oShip.x, oShip.y);
if(dist <= 300)
{
	isActive = true;
	with (oShip) 
	{
		spd = 2;
		move_towards_point(oX, oY, spd);
	} 
}
else
{
	if(isActive)
		with (oShip) 
	{
		move_towards_point(oX, oY, 0);
	}
}
	