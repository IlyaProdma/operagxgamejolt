/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var oX, oY, spd;
oX = x;
oY = y;
gravityActive = 1; 

if((oShip.key_up && place_meeting(oShip.x - 78, oShip.y - 78, border_up)) || (oShip.key_down && place_meeting(oShip.x, oShip.y, border_down)))
{
	gravityActive = 0;
}
else gravityActive = 1;

dist = point_distance(x, y, oShip.x, oShip.y);
if(dist <= 300 && gravityActive == 1)
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
	