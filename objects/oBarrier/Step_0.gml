if ( x - oShip.x < -500) instance_destroy();
if (hp <= 0)
	sprite_index = sAsteroidDestruction;
if (instance_exists(oBlackHole) && point_distance(x, y, oBlackHole.x, oBlackHole.y) <= 500)
	move_towards_point(oBlackHole.x, oBlackHole.y, 5);