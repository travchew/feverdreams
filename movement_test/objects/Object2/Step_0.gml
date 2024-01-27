/// @description Insert description here
// You can write your code in this editor


x_offset = mouse_x - room_width/2;
y_offset = mouse_y- room_height/2;
player_speed = 50;

move_angle = 360 * arctan2(-y_offset, x_offset)/(2 * pi);
show_debug_message(y_offset, x_offset);
motion_set(move_angle, player_speed);