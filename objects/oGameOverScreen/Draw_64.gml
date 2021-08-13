draw_set_color(c_white);
draw_text(menu_x -100, menu_y / 2 + 75, "Game over");

draw_set_font(MenuFont);
draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);

for(var i = 0; i < menu_items; i++)
{

	
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	
	var xx = menu_x - 100;
	var yy = menu_y - (menu_item_height * i * 2) ;
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt)
	
}
draw_text(room_width-330, 60, "HIGH SCORE: " + string(global.high_score));
draw_text(room_width-270, 100, "SCORE: " + string(score));