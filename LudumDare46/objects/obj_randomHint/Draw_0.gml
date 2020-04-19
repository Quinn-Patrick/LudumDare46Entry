/// @description Insert description here
// You can write your code in this editor

if(!loaded) draw_text(100,100,"Loading...");
else{
	draw_text(x, y - 16, "Tip of the day:");
	draw_set_valign(fa_top);
	draw_text_ext(x,y,"\"" + hint + "\"", 16, 700);
	draw_set_halign(fa_left);
	
	draw_text(x+64, y+32, "- " + hintCreator);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
}