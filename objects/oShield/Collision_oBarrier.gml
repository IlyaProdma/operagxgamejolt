hp = 0;
audio_play_sound(mShieldCrack, 1000, false);
sprite_index = sShieldDestruction;
with(other)
{
	object_index = oEmptyObj;
	show_message(object_index);
	hp = 0;
}
oShip.shieldActive = false;