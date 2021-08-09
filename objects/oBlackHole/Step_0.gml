var hX, hY, hdist;
hX = x;
hY = y;

hdist = point_distance(x, y, oShip.x, oShip.y);
if(hdist <= 500)
{
	isActive = true;
	with (oShip) 
	{
		if(key_space)
		{
			spd = (currentSpeed - boost) * (500 - hdist) * 0.0045;
		}
		else
		{
			spd = currentSpeed * (500 - hdist) * 0.0045;
		}
		move_towards_point(hX, hY, spd);
	} 
}
else
{
	if(isActive)
		with (oShip) 
	{
		isActive = false;
		move_towards_point(hX, hY, 0);
	}
}