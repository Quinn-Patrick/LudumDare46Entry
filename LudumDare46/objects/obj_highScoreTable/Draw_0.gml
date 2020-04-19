/// @description Insert description here
// You can write your code in this editor

if(!loaded) draw_text(100,100,"Loading...");
else{
	score_text = "";
	for(i = 0; i < ds_list_size(global.scoreList); i++){
		score_text = score_text + ds_list_find_value(global.scoreList, i) + "\n";
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(x,y,processed);
	draw_text(x+128, y, score_text);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
}