hp = 0;
audio_play_sound(mShieldCrack, 1000, false);
sprite_index = sShieldDestruction;
with(other)
	instance_destroy();
oShip.shieldActive = false;