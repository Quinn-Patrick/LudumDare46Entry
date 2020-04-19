/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(!selected)draw_text(x+16, y+8, contents);
else{
	if(metaTimer%2 == 0)draw_text(x+16, y+8, contents + "|");
	else draw_text(x+16, y+8, contents);
}
draw_text(x + 16, y-32, "Anything you submit will be visible to others.");
draw_text(x + 16, y-16, "Enter your name:");

draw_set_halign(fa_center);
draw_set_valign(fa_center);
