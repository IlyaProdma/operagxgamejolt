if (oShip.x - x >= 1000)
	instance_destroy();
if(!global.multiplayer)
{
	if (point_distance(x, y, oShip.x, oShip.y) <= 200)
		move_towards_point(oShip.x, oShip.y, oShip.currentSpeed + 5);
}
else {
	if(point_distance(x, y, oShip.x, oShip.y) <= 150) {
		move_towards_point(oShip.x, oShip.y, oShip.currentSpeed + 5);
	}
	if(point_distance(x, y, oShip2.x, oShip2.y) <= 150)
		move_towards_point(oShip2.x, oShip2.y, oShip2.currentSpeed + 5);
}