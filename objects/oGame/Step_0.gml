if (!gameOver)
{
	score = round(shipObj.x);
	shipObj.constSpeed += 0.002;
}
else
{
	audio_group_stop_all(background);
	audio_play_sound(mDeath, 1000, false);
	gameOver = false;
	instance_destroy();
	instance_destroy(oPlanet);
	instance_destroy(oBarrier);
	instance_destroy(oMusic);
	room_goto(GameOverRoom);
	instance_create_layer(0, 0, "Instances", oGame);
	instance_create_layer(0, 0, "Instances", oMusic);
	shipObj.x = 0;
	//audio_play_sound(mTheme, 1000, false);
}