if(hp<=0)
{
	audio_play_sound(mAsteroidCrack, 1000, false);
	instance_destroy();
}
if ( x - oShip.x < -500) instance_destroy();
if (instance_exists(oBlackHole) && point_distance(x, y, oBlackHole.x, oBlackHole.y) <= 500)
	move_towards_point(oBlackHole.x, oBlackHole.y, 5);