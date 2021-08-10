/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (abs(y - oShip.y) <= room_height*0.75)
	audio_play_sound(mEnemyShoot, 1000, false);
var rocket = instance_create_layer(x, y, "Rockets", oEnemyRocket)
with (rocket)
{
	speed = -7;
	direction = 0;
	image_angle = 0;
}
alarm[0] = room_speed * 2;

