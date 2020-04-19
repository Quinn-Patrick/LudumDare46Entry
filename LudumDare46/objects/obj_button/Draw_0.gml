/// @description Insert description here
// You can write your code in this editor


draw_sprite(spr_button, 0, x, y);
if(mouseHover)draw_sprite(spr_button, 1, x, y);
if(mouseHover && mouse_check_button(mb_left)){
	draw_sprite(spr_button, 2, x, y);
	obj_titleWipe.velo = 20;
}