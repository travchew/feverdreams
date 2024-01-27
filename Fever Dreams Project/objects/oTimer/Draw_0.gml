draw_sprite_ext(spr_timer, image_index, dx, dy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_comic_sans);

if (global.minigame_won = 0) {
	draw_text_colour(x, y, int64(global.timer), timer_c, timer_c, timer_c, timer_c, 1);
}
else if (global.minigame_won = 1) {
	image_index = 1;
	magx = 0;
	magy = 0;
	return_timer += 1;
	if return_timer > return_time room_goto(minigame_hub);
}
else {
	return_timer += 1;
	if return_timer > return_time room_goto(minigame_hub);
}


if (global.timer = 0) {
	if (global.minigame_won = 0) lose();
	image_index = 2;
	magx = 0;
	magy = 0;
}
else if (global.timer <= 5) {
	timer_c = c_red;
	magx = 4;
	magy = 3;
}
else {
	timer_c = c_black;
	magx = .1;
	magy = 0;
}

shake();
