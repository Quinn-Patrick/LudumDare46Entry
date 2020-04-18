/// @description Insert description here
// You can write your code in this editor
//center = x + sprite_width/2;
if(system.mouse_in_window = 0)x = window_mouse_get_x() - width/2;
if(system.mouse_in_window = 1)x = global.rightBorder - width/2;
if(system.mouse_in_window = 2)x = global.leftBorder - width/2;

counter++;

//width = 500*sqr(sin(counter/20));

//if(mouse_x > global.leftBorder) x = global.leftBorder - width/2;
//if(mouse_x < global.rightBorder) x = global.rightBorder - width/2;