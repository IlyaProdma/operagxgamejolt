if (!gameOver)
{
	score = round(shipObj.x);
	shipObj.constSpeed += 0.002;
}
else
{
	audio_play_sound(mDeath, 1000, false);
	audio_group_stop_all(sound_effects);
	audio_stop_sound(mTheme);
	gameOver = false;
	room_goto(GameOverRoom);
	shipObj.x = 0;
}