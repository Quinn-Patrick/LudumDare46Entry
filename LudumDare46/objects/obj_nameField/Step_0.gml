/// @description Insert description here
// You can write your code in this editor
if(mouse_x > x && mouse_x < x + 512 && mouse_y > y && mouse_y < y + 32) mouseHover = true;
else mouseHover = false;

if(mouse_check_button(mb_left)){
	if(mouseHover)selected = true;
	if(!mouseHover)selected = false;
}

if(contents != "") hasContents = true;
else hasContents = false;

if(selected){
	if(keyboard_lastchar != "" || keyboard_lastkey == vk_backspace){
		if(string_length(contents) < maxLength)contents = contents + keyboard_lastchar;
		contents = string_lettersdigits(contents);
		if(keyboard_lastkey == vk_backspace){
			newString = "";
			for(i = 1; i < string_length(contents); i++){
				newString = newString + string_char_at(contents, i);
			}
			contents = "";
			contents = newString;
			newString = "";
		}
	}
	keyboard_lastchar = "";
	keyboard_lastkey = -1;
}
timer++;
if(timer % 10 = 0) metaTimer++;