with (other)
{
	instance_destroy();
}
if (!shieldActive)
{
	audio_play_sound(mItemPickup, 1000, false);
	instance_create_layer(x, y, "Instances", oShield);
	shieldActive = true;
}