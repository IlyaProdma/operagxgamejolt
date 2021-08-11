with(other)
{
	instance_destroy();
}
if (rockets < 3)
{
	audio_play_sound(mItemPickup, 1000, false);
	rockets++;
}