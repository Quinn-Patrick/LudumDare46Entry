/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(!selected)draw_text_ext(x+8, y+8, contents, 16, 498);
else{
	if(metaTimer%2 == 0)draw_text_ext(x+8, y+8, contents + "|", 16, 498);
	else draw_text_ext(x+8, y+8, contents, 16, 498);
}

draw_text(x + 16, y-16, "Leave a hint, or leave blank to not leave a hint:");

draw_set_halign(fa_center);
draw_set_valign(fa_center);
