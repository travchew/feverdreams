function map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lowered_bound, _desired_upper_bound) {
    return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lowered_bound)) + _desired_lowered_bound;
}

function won() {
	audio_play_sound(snd_tada, 10, false);
	global.minigame_won = 1;
	global.score += 1;
}

function lose() {
	global.minigame_won = -1
	global.hp -= 1;
	audio_play_sound(snd_uhoh, 10, false);
}


#macro SEC 60

function comic_sans() {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_comic_sans);
}
