if (hp <= 0)
{
	audio_play_sound(mEnemyDeath, 1000, false);
	instance_destroy();
}
