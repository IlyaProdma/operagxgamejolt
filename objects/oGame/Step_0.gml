if (!gameOver)
{
	score = round(oShip.x);
	oShip.constSpeed += 0.002;
}
else
{
	if(global.sound)
	{
	audio_play_sound(mDeath, 1000, false);
	}
	audio_group_stop_all(sound_effects);
	audio_stop_sound(mTheme);
	gameOver = false;
	room_goto(GameOverRoom);
	oShip.x = 0;
}