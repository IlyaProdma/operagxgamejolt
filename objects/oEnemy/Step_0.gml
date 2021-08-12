x += currentSpeed;
if (oShip.x - x > 1400)
	instance_destroy();
if (hp <= 0)
{
	sprite_index = sEnemyDestruction;
}
if (instance_exists(oBlackHole) && point_distance(x, y, oBlackHole.x, oBlackHole.y) <= 500)
	move_towards_point(oBlackHole.x, oBlackHole.y, 5);
if(score % 100 == 0)
{
	currentDirection = irandom_range(-1,1);
}

y += currentDirection * vsp;
