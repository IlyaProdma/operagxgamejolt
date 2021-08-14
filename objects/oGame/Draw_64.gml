if (instance_exists(oShip2))
{
	draw_text(room_width-150, 50, "HIGH SCORE: " + string(global.high_score));
	draw_text(room_width-150, 70, "SCORE: " + string(score));
}
else {
		draw_text(room_width-150, 40, "HIGH SCORE: " + string(global.high_score));
	draw_text(room_width-173, 60, "SCORE: " + string(score));
}
if (instance_exists(oShip2))
{
	draw_text(room_width-400, 50, "RED PLAYER ROCKETS: " + string(oShip.rockets));
	draw_text(room_width-400, 70, "GREEN PLAYER ROCKETS: " + string(oShip2.rockets));
}
else
	draw_text(room_width-172, 80, "ROCKETS: " + string(oShip.rockets));

