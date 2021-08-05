x += follow.constSpeed;
if(instance_exists(follow))
{
	xTo = follow.x;
}
x += xTo - x;
//y = follow.y;
//camera_set_view_pos(cam, x - w_space, y  - h_space);