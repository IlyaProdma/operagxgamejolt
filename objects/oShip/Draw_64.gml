if (!global.multiplayer)
	draw_sprite(sBoostBarBorder, 0, boostBar_x, boostBar_y);
else
	draw_sprite_stretched(sBoostBarBorder, 0, boostBar_x, boostBar_y + 4, boostBar_width - 12, boostBar_height);
draw_sprite_stretched(sBoostBarCell, 0, boostBar_x + 6, boostBar_y + 4, min((boostBar/boostBar_max) * boostBar_width, boostBar_width) - 12, boostBar_height);

draw_sprite(sOverheatBarBorder, 0, overheatBar_x, overheatBar_y);
draw_sprite_stretched(sOverheatBarCell, 0, overheatBar_x + 6, overheatBar_y + 4, max(0, overheatBar-24), overheatBar_height);