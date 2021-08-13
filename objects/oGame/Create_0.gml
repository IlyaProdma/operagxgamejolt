audio_stop_sound(mDeathTheme);
audio_group_stop_all(sound_effects);
if (!audio_is_playing(mTheme))
	audio_play_sound(mTheme, 1000, true);
draw_set_font(asset_font);
window_set_size(display_get_width(), display_get_height());
surface_resize(application_surface, display_get_width(), display_get_height());
room_height = window_get_height();
room_width = window_get_width();
score = 0;
alarm[0] = room_speed * 0.5;
alarm[1] = room_speed * 0.5;
alarm[2] = room_speed * 15;
alarm[3] = room_speed * 5;
alarm[4] = room_speed * 20;
gameOver = false;
