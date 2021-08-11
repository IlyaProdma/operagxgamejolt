if (sprite_index == sAsteroidDestruction)
{
	audio_play_sound(mAsteroidCrack, 1000, false);
	instance_destroy();
}
