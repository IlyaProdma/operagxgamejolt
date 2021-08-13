with (other)
{
	instance_destroy();
}
if (!shieldActive)
{
	audio_play_sound(mItemPickup, 1000, false);
	shield = instance_create_layer(x+5, y, "Shields", oShield);
	shieldActive = true;
}