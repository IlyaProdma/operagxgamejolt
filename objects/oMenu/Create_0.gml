audio_group_stop_all(sound_effects);
display_set_gui_size(display_get_width(), display_get_height());
gui_height = display_get_gui_height();
gui_width = display_get_gui_width();
gui_margin = 32;
menu_x = gui_width / 2 + 85 - 250;
menu_y = (gui_height - gui_margin) / 2 + 85 - 200;
menu_y_target = gui_height / 2 + 85;
menu_speed = 20;
menu_fort = MenuFont;
menu_item_height = font_get_size(MenuFont);
menu_commited = -1;
menu_control = true;
oShipMenu.x = -1000;
oShipMenu.y = -1000;

menu[4] = "1 player ";
menu[3] = "2 players";
menu[2] = "Help";
if(global.sound)
{
menu[1] = "Sound:on";
}
else
{
menu[1] = "Sound:off";
}
menu[0] = "About";


menu_items = array_length_1d(menu);
menu_cursor = 4;
