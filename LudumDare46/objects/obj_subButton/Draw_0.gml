/// @description Insert description here
// You can write your code in this editor

if(hasPressed) seen=false;
if(instance_number(obj_highScoreTable > 0)){
	if(!obj_scoreboard.loaded) seen = false;
}
else seen = true;

if(seen)draw_sprite(spr_submitButton, 0, x, y);
if(mouseHover && seen)draw_sprite(spr_submitButton, 1, x, y);
if(mouseHover && mouse_check_button(mb_left) && obj_nameField.hasContents && !hasPressed){
	

	scoreString = string(score);
	newString = "";
	for(i = 0; i < string_length(scoreString); i++){
		if(string_char_at(scoreString, i+1) == ".") break;
		newString += string_char_at(scoreString, i+1);
	}
	scoreString = newString;
	draw_sprite(spr_submitButton, 2, x, y);
	http_get(global.url + "/score/addscore/" + obj_nameField.contents + "/" + scoreString);
	global.hasSubmitted = true;
	hasPressed = true;
	
	if(obj_hintField.hasContents){
		http_get(global.url + "/score/" + obj_nameField.contents + "/" + obj_hintField.contents);
	}
	
	instance_destroy(obj_highScoreTable);
	reloading = true;
}

if(reloading){
	reloadTimer++;
	if(reloadTimer > 120){
		reloading = false;
		instance_create_depth(320,64,0,obj_highScoreTable);
	}
	
}



