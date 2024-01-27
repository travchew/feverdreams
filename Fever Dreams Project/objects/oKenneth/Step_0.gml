magx = 2;
if CLICK_HELD {
	image_yscale = og_ysc * 0.8;
	magx = 0;
}
else image_yscale = og_ysc;


timer += 1;

if CLICK audio_play_sound(snd_pump,10,false);


shake();

if (global.minigame_won = -1) {
	instance_create_layer(x, y-60, "above", oExplosion);
	instance_destroy();
}



