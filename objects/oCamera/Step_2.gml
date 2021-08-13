if (!global.multiplayer)
{
	if (instance_exists(follow))
	{
		viewy = lerp(viewy, follow.y, 0.025);
		vm = matrix_build_lookat(x+w_space, viewy, -10, x+w_space, viewy, 0, 0, 1, 0);
		camera_set_view_mat(cam, vm);
	}
}
else
{
	vm = matrix_build_lookat(x+w_space, 0, -10, x+w_space, 0, 0, 0, 1, 0);
	camera_set_view_mat(cam, vm);
}