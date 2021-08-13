draw_text(room_width-150, 20, "HIGH SCORE: " + string(global.high_score));
draw_text(room_width-150, 40, "SCORE: " + string(score));
if (instance_exists(oShip2))
{
	draw_text(room_width-150, 60, "PLAYER 1 ROCKETS: " + string(oShip.rockets));
	draw_text(room_width-150, 80, "PLAYER 2 ROCKETS: " + string(oShip2.rockets));
}
else
	draw_text(room_width-150, 60, "ROCKETS: " + string(oShip.rockets));
