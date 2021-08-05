x += follow.constSpeed;
if(instance_exists(follow))
{
	xTo = follow.x;
}
x += xTo - x;