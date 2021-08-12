with(other)
{
	instance_destroy();
}
if (boostBar < 500)
	audio_play_sound(mItemPickup, 1000, false);
boostBar += 200;