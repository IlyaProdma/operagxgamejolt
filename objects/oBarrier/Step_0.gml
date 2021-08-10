if(hp<=0 or x - oShip.x < -500) instance_destroy();
if (instance_exists(oBlackHole) && point_distance(x, y, oBlackHole.x, oBlackHole.y) <= 500)
	instance_destroy();