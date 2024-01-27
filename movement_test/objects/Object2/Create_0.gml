/// @description Insert description here
// You can write your code in this editor

//we are gonna be using arctan to calculate angle

x_offset = mouse_x - x;
y_offset = mouse_y - y;
player_speed = 10;

move_angle = 360 * arctan2(y_offset, x_offset)/(2 * pi);

motion_set(move_angle, player_speed);

