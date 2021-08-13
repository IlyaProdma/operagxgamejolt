var hX, hY, hdist;
hX = x;
hY = y;

hdist = point_distance(x, y, oShip.x, oShip.y);
if(hdist <= 500)
{
	isActiveh = true;
	with (oShip)
	{
		if(key_boost && boostBar > 0)
		{
			spdh = (currentSpeed - boost) * (500 - hdist) * 0.0024 * oBlackHole.image_xscale;
		}
		else
		{
			spdh = currentSpeed * (500 - hdist) * 0.0024 * oBlackHole.image_xscale;
		}
		move_towards_point(hX, hY, spdh);
	}
}
else
{
	if(isActiveh)
		with (oShip) 
		{
			isActiveh = false;
			move_towards_point(hX, hY, 0);
		}
}
if (instance_exists(oShip2))
{
	hdist = point_distance(x, y, oShip2.x, oShip2.y);
	if(hdist <= 500)
	{
		isActiveh = true;
		with (oShip2)
		{
			if(key_boost && boostBar > 0)
			{
				spdh = (currentSpeed - boost) * (500 - hdist) * 0.0024 * oBlackHole.image_xscale;
			}
			else
			{
				spdh = currentSpeed * (500 - hdist) * 0.0024 * oBlackHole.image_xscale;
			}
			move_towards_point(hX, hY, spdh);
		}
	}
	else
	{
		if(isActiveh)
			with (oShip2) 
			{
				isActiveh = false;
				move_towards_point(hX, hY, 0);
			}
	}
}
if(x - oShip.x < -500) instance_destroy();