draw_text(room_width-150, 40, "HIGH SCORE: " + string(global.high_score));
draw_text(room_width-150, 60, "SCORE: " + string(score));
if (instance_exists(oShip2))
{
	draw_text(room_width-150, 80, "RED PLAYER ROCKETS: " + string(oShip.rockets));
	draw_text(room_width-150, 100, "GREEN PLAYER ROCKETS: " + string(oShip2.rockets));
}
else
	draw_text(room_width-150, 80, "ROCKETS: " + string(oShip.rockets));

