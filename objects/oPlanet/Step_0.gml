var oX, oY, dist;
oX = x;
oY = y;

dist = point_distance(x, y, oShip.x, oShip.y);
if(dist <= 300)
{
	isActive = true;
	with (oShip) 
	{
		if(key_space)
		{
			spd = (currentSpeed - boost) * (300 - dist) * 0.0035;
		}
		else
		{
			spd = currentSpeed * (300 - dist) * 0.0035;
		}
		move_towards_point(oX, oY, spd);
	} 
}
else
{
	if(isActive)
		with (oShip) 
	{
		isActive = false;
		move_towards_point(oX, oY, 0);
	}
}