if (!gameOver)
{
	if (instance_exists(oShip))
	{
		if (global.multiplayer)
		{
			if (oShip.x <= oShip2.x)
				oCamera.follow = oShip;
			else
				oCamera.follow = oShip2;
			
			if (oShip.x - oShip2.x > 800)
				oShip.x = oShip2.x;
			if (oShip2.x - oShip.x > 800)
				oShip2.x = oShip.x;
		}
		score = round(oShip.x);
		if (score > global.high_score)
			global.high_score = score;
		oShip.constSpeed += 0.002;
		if (instance_exists(oShip2))
		{
			oShip2.constSpeed += 0.002;
		}
	}
	
}
else
{
	audio_play_sound(mDeath, 1000, false);
	audio_group_stop_all(sound_effects);
	audio_stop_sound(mTheme);
	gameOver = false;
	room_goto(GameOverRoom);
}