x += oShip.constSpeed;
if(instance_exists(oShip))
{
	xTo = follow.x;
}
x += xTo - x;
camera_set_view_pos(cam, x - w_space, y  - h_space);
