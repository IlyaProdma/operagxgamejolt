x += currentSpeed;
if (oShip.x - x > 1400 or hp <= 0)
	instance_destroy();
if (instance_exists(oBlackHole) && point_distance(x, y, oBlackHole.x, oBlackHole.y) <= 500)
	move_towards_point(oBlackHole.x, oBlackHole.y, 5);
if(score % 100 == 0)
{
	currentDirection = irandom_range(-1,1);
}

y += currentDirection * vsp;
