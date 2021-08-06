var oX, oY, dist;
oX = x;
oY = y;

dist = point_distance(x, y, oShip.x, oShip.y);
if(dist <= 300)
{
	isActive = true;
	with (oShip) 
	{
		spd = currentSpeed * (300 - dist) * 0.0035;
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