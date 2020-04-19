/// @description Insert description here
// You can write your code in this editor
if(timer > 150 || dead){
	draw_text(32,32, "Score: ");
	draw_text(256-string_width(string(score)), 32, string(floor(score)));
	draw_text(32,48, "Chain: ");
	draw_text(256-string_width(string(chain)), 48, string(chain));
	draw_text(32,64, "Level: ");
	draw_text(256-string_width(string(global.level)), 64, string(global.level));
	if(storedLongPaddle) draw_text(32,96, "CLICK[POWER UP]CLICK");
}