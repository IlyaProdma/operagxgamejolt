audio_stop_sound(mDeathTheme);
audio_stop_sound(mMenuTheme);
audio_group_stop_all(sound_effects);
audio_play_sound(mTheme, 1000, true);
draw_set_font(asset_font);
room_height = window_get_height();
room_width = window_get_width();
score = 0;
global.high_score = 0;
gameOver = false;