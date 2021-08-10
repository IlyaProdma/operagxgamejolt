var hX, hY, hdist;
hX = x;
hY = y;

hdist = point_distance(x, y, oShip.x, oShip.y);
if(hdist <= 500)
{
	isActiveh = true;
	with (oShip) 
	{
		if(key_space)
		{
			spdh = (currentSpeed - boost) * (500 - hdist) * 0.0045;
		}
		else
		{
			spdh = currentSpeed * (500 - hdist) * 0.0045;
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
if(x - oShip.x < -500) instance_destroy();