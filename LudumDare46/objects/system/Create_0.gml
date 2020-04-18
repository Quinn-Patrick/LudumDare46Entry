/// @description Insert description here
// You can write your code in this editor
global.leftBorder = 0;
global.rightBorder = room_width;
global.topBorder = 0;
global.bottomBorder = room_height;

global.gravity = 0.2;

game_set_speed(60, gamespeed_fps);

mouse_in_window = 0;
mouse_delta = 0;
mouse_last = 0;

for(i = 99; i > -1; i--){
	mouse_delta_list[i] = 0;
}

timer = 0;