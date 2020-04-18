/// @description Insert description here
// You can write your code in this editor
mouse_delta = mouse_x-mouse_last;


for(i = 99; i > 0; i--){
	mouse_delta_list[i] = mouse_delta_list[i-1];
}
mouse_delta_list[0] = mouse_delta;

if(mouse_delta = 0 && mouse_delta_list[1] > global.rightBorder - mouse_x) mouse_in_window = 1;
if(mouse_delta = 0 && mouse_delta_list[1]< 0 && abs(mouse_delta_list[1]) > global.leftBorder + mouse_x) mouse_in_window = 2;
if(abs(mouse_delta) > 0) mouse_in_window = 0;
mouse_last = mouse_x;

timer++;

if(timer % 150 == 0) instance_create_depth(768, 160, 0, obj_ball);