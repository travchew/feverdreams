shake_setup();

created_explosion = false;

inflation = 0;
max_inflation = 70;

exploded = false;

img_ysc = image_yscale;
img_xsc = image_xscale;

function pre_explode() {
	if CLICK inflation += 5;
	show_debug_message(inflation);

	if (inflation > 0) {
		inflation -= .1;
	}

	if (inflation < 15) image_index = 0;
	else image_index = 1;

	
	inflation = clamp(inflation,0,10000);
	
	if inflation > max_inflation && (global.minigame_won = 0) {
		exploded = true;
		won();
		audio_play_sound(snd_mmscream, 10, false);
		audio_play_sound(snd_blow, 10, false);
	}
}

function post_exploded() {

	x += random_range(-12,15);
	y += -16;
	if (y < 50) && created_explosion = false {
		created_explosion = true
		show_debug_message("created")
	instance_create_layer(x, y+30, "above", oExplosion);
	}
}




