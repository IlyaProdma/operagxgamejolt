var oX, oY, dist;
oX = x;
oY = y;

if (instance_exists(oBlackHole) && point_distance(x, y, oBlackHole.x, oBlackHole.y) <= 500)
	move_towards_point(oBlackHole.x, oBlackHole.y, 5);
else
{
	dist = point_distance(x, y, oShip.x, oShip.y);
	if(dist <= 300 && !oShip.nearBorder)
	{
		isActive = true;
		with (oShip) 
		{
			if(key_boost && boostBar > 0)
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
		if(isActive || oShip.nearBorder)
			with (oShip) 
			{
				move_towards_point(oX, oY, 0);
			}
		isActive = false;
	}
	if (instance_exists(oShip2))
	{
		dist = point_distance(x, y, oShip2.x, oShip2.y);
		if(dist <= 300 && !oShip2.nearBorder)
		{
			isActive = true;
			with (oShip2) 
			{
				if(key_boost && boostBar > 0)
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
			if(isActive || oShip2.nearBorder)
				with (oShip2)
				{
					move_towards_point(oX, oY, 0);
				}
			isActive = false;
		}
	}
	if(x - oShip.x < -500) instance_destroy();
}