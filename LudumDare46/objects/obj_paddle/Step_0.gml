/// @description Insert description here
// You can write your code in this editor
//center = x + sprite_width/2;
if(system.mouse_in_window = 0)x = window_mouse_get_x() - width/2;
if(system.mouse_in_window = 1)x = global.rightBorder - width/2;
if(system.mouse_in_window = 2)x = global.leftBorder - width/2;

if(mouse_check_button(mb_left) && obj_scoreboard.storedLongPaddle){
	obj_scoreboard.storedLongPaddle = false;
	long = 480;
}


width = 256-(global.level*8);
if(width < 64)width = 64;
if(long > 0) width *= 2;
if(obj_scoreboard.dead) width = 0;

long -= 1;
if(long < 0) long = 0;

counter++;

//width = 500*sqr(sin(counter/20));

//if(mouse_x > global.leftBorder) x = global.leftBorder - width/2;
//if(mouse_x < global.rightBorder) x = global.rightBorder - width/2;