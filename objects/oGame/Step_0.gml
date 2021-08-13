if (!gameOver)
{
	score = round(oShip.x);
	if (score > high_score)
		high_score = score;
	oShip.constSpeed += 0.002;
}
else
{
	audio_play_sound(mDeath, 1000, false);
	audio_group_stop_all(sound_effects);
	audio_stop_sound(mTheme);
	gameOver = false;
	room_goto(GameOverRoom);
	oShip.x = 0;
}