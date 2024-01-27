if (global.minigame_won = -1) {
	image_index = 0;
	inflation = 0;
}
else if !exploded && (global.minigame_won = 0) pre_explode();
else post_exploded();

image_xscale = map_value(inflation, 0, 100, img_xsc, img_xsc*1.3);
image_yscale = map_value(inflation, 0, 100, img_ysc, img_ysc*1.1);




