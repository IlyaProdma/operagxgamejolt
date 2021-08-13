draw_set_font(MenuFont);
draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);

for(var i = 0; i < menu_items; i++)
{
	
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor == i)
	{
		txt = string_insert("", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	
	var xx = menu_x - 100;
	var yy = menu_y - (menu_item_height * i * 2);
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt)
	
	switch(menu_cursor)
	{
		case 4: oShipMenu.x = xx - 200; oShipMenu.y = menu_y - (menu_item_height * 5 * 2) + 10; draw_sprite_ext(oShipMenu, oShipMenu.x, oShipMenu.y, 0, 0, 0, 0, 0, 0); break;
		case 3: oShipMenu.x = xx - 200; oShipMenu.y = menu_y - (menu_item_height * 4 * 2) + 10; draw_sprite_ext(oShipMenu, oShipMenu.x, oShipMenu.y, 0, 0, 0, 0, 0, 0); break;
		case 2: oShipMenu.x = xx - 200; oShipMenu.y = menu_y - (menu_item_height * 3 * 2) + 10; draw_sprite_ext(oShipMenu, oShipMenu.x, oShipMenu.y, 0, 0, 0, 0, 0, 0); break;
		case 1: oShipMenu.x = xx - 200; oShipMenu.y = menu_y - (menu_item_height * 2 * 2) + 10; draw_sprite_ext(oShipMenu, oShipMenu.x, oShipMenu.y, 0, 0, 0, 0, 0, 0); break;
		case 0: oShipMenu.x = xx - 200; oShipMenu.y = menu_y - (menu_item_height * 1 * 2) + 10; draw_sprite_ext(oShipMenu, oShipMenu.x, oShipMenu.y, 0, 0, 0, 0, 0, 0); break;
	};
	
}

draw_set_color(c_white);
draw_text(menu_x + 400, menu_y + 260, "By Tumbleweed Team");
if(global.high_score)
	draw_text(room_width-330, 60, "HIGH SCORE: " + string(global.high_score));