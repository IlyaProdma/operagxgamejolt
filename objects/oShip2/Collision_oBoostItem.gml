with(other)
{
	instance_destroy();
}
if (oShip.boostBar < 500)
{
	audio_play_sound(mItemPickup, 1000, false);
	oShip.boostBar += 200;
}