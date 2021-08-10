var oX, oY, dist;
oX = x;
oY = y;

if (instance_exists(oBlackHole) && point_distance(x, y, oBlackHole.x, oBlackHole.y) <= 500)
	move_towards_point(oBlackHole.x, oBlackHole.y, 5);
else
{
	dist = point_distance(x, y, oShip.x, oShip.y);
	if(dist <= 300)
	{
		isActive = true;
		with (oShip) 
		{
			if(key_space && boostBar > 0)
			{
				spd = (currentSpeed - boost) * (300 - dist) * oPlanet.coef;
			}
			else
			{
				spd = currentSpeed * (300 - dist) * oPlanet.coef;
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
	if(x - oShip.x < -500) instance_destroy();
}