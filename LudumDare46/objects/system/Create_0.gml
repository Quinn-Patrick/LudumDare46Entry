/// @description Insert description here
// You can write your code in this editor
global.leftBorder = 0;
global.rightBorder = room_width;
global.topBorder = 0;
global.bottomBorder = room_height;
global.serveReady = true;
global.serveZoneWidth = 32;
global.serveY = 160-16;
global.gravity = 0.2;
global.level = 1;
global.universalSpeed = 1;
global.totalBounces = 0;
global.messageHeightSequence = 0;
draw_set_font(fnt_bin);
queuedBall = false;

ballCount = 0;

game_set_speed(60, gamespeed_fps);

lastScore = 0;

mouse_in_window = 0;
mouse_delta = 0;
mouse_last = 0;

for(i = 99; i > -1; i--){
	mouse_delta_list[i] = 0;
}

timer = 0;