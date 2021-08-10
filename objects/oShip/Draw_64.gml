/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_sprite(sBoostBarBorder, 0, boostBar_x, boostBar_y);
draw_sprite_stretched(sBoostBarCell, 0, boostBar_x, boostBar_y, min((boostBar/boostBar_max) * boostBar_width, boostBar_width), boostBar_height);