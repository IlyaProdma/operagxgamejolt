if (point_distance(x, y, oShip.x, oShip.y) <= 200)
	move_towards_point(oShip.x, oShip.y, oShip.currentSpeed + 5);
if (oShip.x - x > 1000)
	instance_destroy();