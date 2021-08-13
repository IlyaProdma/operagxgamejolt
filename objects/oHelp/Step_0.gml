menu_y += (menu_y_target - menu_y) / menu_speed;

	if(keyboard_check_pressed(vk_anykey))
	{
		room_goto(Menu);
	}