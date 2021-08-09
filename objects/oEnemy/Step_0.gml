x += currentSpeed;
if (oShip.x - x > 1400 or hp <= 0)
	instance_destroy();

if(score % 100 == 0)
{
	currentDirection = irandom_range(-1,1);
}

y += currentDirection * vsp;
