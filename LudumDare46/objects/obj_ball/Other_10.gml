/// Room edge detection
// You can write your code in this editor
if(x + sprite_width > global.rightBorder || x < global.leftBorder){
	audio_play_sound(sfx_bounce, 1, false);
	hVelo *= -1;
}

if(y + sprite_height > global.bottomBorder){
	drop();
	instance_destroy(self);
}