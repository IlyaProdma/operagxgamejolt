audio_stop_sound(mDeathTheme);
audio_stop_sound(mMenuTheme);
audio_group_stop_all(sound_effects);
if (!audio_is_playing(mTheme))
	audio_play_sound(mTheme, 1000, true);
draw_set_font(asset_font);
window_set_size(display_get_width(), display_get_height());
surface_resize(application_surface, display_get_width(), display_get_height());
room_height = window_get_height();
room_width = window_get_width();
score = 0;
alarm[0] = room_speed * 0.5;
alarm[1] = room_speed * 0.5;
alarm[2] = room_speed * 15;
alarm[3] = room_speed * 5;
alarm[4] = room_speed * 20;
gameOver = false;
instance_destroy(oPlanet);
instance_destroy(oBarrier);
instance_destroy(oBoostItem);
instance_destroy(oEnemy);
instance_destroy(oEnemyRocket);
instance_destroy(oBullet);
instance_destroy(oRocket);
instance_destroy(oBlackHole);
instance_destroy(oShieldItem);
instance_destroy(oRocketItem);
instance_destroy(oBoostItem);
instance_destroy(oShield);
instance_destroy(oShip);
instance_destroy(oShip2);
player = instance_create_layer(0, 0, "Instances", oShip);
oCamera.follow = player;
if (global.multiplayer)
{
	player2 = instance_create_layer(player.x, player.y+100, "Instances", oShip2);
	oShip2.speed = 0;
	oShip2.shieldActive = true;
	oShip2.constSpeed = 5;
	oShip2.vsp = 0;
	oShip2.rockets = 1;
	oShip2.boostBar = 500;
	oShip2.overheatBar = 0;
}
oShip.speed = 0;
oShip.shieldActive = true;
oShip.constSpeed = 5;
oShip.vsp = 0;
oShip.rockets = 1;
oShip.boostBar = 500;
oShip.overheatBar = 0;
alarm[5] = 0;
alarm[6] = 15;

instance_destroy(oCamera);
instance_create_layer(0, 0, "Instances", oCamera);