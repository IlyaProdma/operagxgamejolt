/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
menu_y += (menu_y_target - menu_y) / menu_speed;

	if(keyboard_check_pressed(vk_anykey))
	{
		game_restart();
	}