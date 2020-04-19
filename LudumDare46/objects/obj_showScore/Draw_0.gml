/// @description Insert description here
// You can write your code in this editor
scoreString = string(score);
newString = "";
for(i = 0; i < string_length(scoreString); i++){
	if(string_char_at(scoreString, i+1) == ".") break;
	newString += string_char_at(scoreString, i+1);
}
scoreString = newString;
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, "Final Score: " + scoreString);