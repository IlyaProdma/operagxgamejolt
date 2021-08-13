key_w = keyboard_check_pressed(ord("W"));
key_s = keyboard_check_pressed(ord("S"));

menu_y += (menu_y_target - menu_y) / menu_speed;

if(!sound)
	audio_group_stop_all(sound_effects);

if(menu_control)
{
	if(keyboard_check_pressed(vk_up) || key_w)
	{
		menu_cursor++;
		audio_play_sound(mMenuKeyClick, 1000, false);
		if(menu_cursor >= menu_items)
		{
			menu_cursor = 0;
		}
	}
	if(keyboard_check_pressed(vk_down) || key_s)
	{
		menu_cursor--;
		audio_play_sound(mMenuKeyClick, 1000, false);
		if(menu_cursor < 0)
		{
			menu_cursor = menu_items - 1;
		}
	}
	
	if(keyboard_check_pressed(vk_enter))
	{
		menu_y_target = gui_height / 2 + 85;
		menu_commited = menu_cursor;
		
		switch(menu_commited)
		{
			case 1: room_goto(Game); break;
			case 0: room_goto(Menu); break;
		};

	}
}
