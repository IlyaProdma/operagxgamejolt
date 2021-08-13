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
			case 4: global.multiplayer = false; room_goto(Game); break;
			case 3: global.multiplayer = true; room_goto(Game); break;
			case 2: room_goto(Help); break;
			case 1: if(menu[1] == "Sound:on") {
						menu[1] = "Sound:off"; 
						audio_master_gain(0);
						break;
						} 
					else			 {
						menu[1] = "Sound:on"; 
						audio_master_gain(1);
						break;
						} 
					break;
			case 0: 
				audio_play_sound(mMenuKeyClick, 1000, false);
				room_goto(About);
				break;
		
		menu_control = false;
		}
	}
}