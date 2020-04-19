/// @description Insert description here
// You can write your code in this editor
//draw_sprite(spr_paddle, 0, x, y);
tiles = floor(width / sprite_get_width(spr_paddle))
for(i = 0; i < tiles+1; i++){
	if(i == tiles) drawWidth = width - ((i)*sprite_get_width(spr_paddle));
	else drawWidth = width;
	draw_sprite_part(spr_paddle, 0, 0, 0, drawWidth, 16, x + i*(sprite_get_width(spr_paddle)), y);
}
//draw_text(100,116,"x: " + string(window_mouse_get_x()) + ", y: " + string(y));