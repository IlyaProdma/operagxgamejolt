x += oShip.constSpeed;
if(instance_exists(oShip))
{
	xTo = follow.x;
}
x += xTo - x;
y = oShip.y;
camera_set_view_pos(cam, x - w_space, y  - h_space);
