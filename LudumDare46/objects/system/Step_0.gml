/// @description Insert description here
// You can write your code in this editor
mouse_delta = mouse_x-mouse_last;


for(i = 99; i > 0; i--){
	mouse_delta_list[i] = mouse_delta_list[i-1];
}
mouse_delta_list[0] = mouse_delta;

if(mouse_delta = 0 && mouse_delta_list[1] > global.rightBorder - mouse_x) mouse_in_window = 1;
if(mouse_delta = 0 && mouse_delta_list[1]< 0 && abs(mouse_delta_list[1]) > global.leftBorder + mouse_x) mouse_in_window = 2;
if(abs(mouse_delta) > 0) mouse_in_window = 0;
mouse_last = mouse_x;

timer++;

if(timer > 120){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if(!obj_scoreboard.dead){
	if(timer == 140) message("KEEP IT ALIVE!");
	if(!audio_is_playing(sng_astralSpheresWav) && audio_system_is_available() && !obj_scoreboard.dead){
		audio_play_sound(sng_astralSpheresWav, 1, true);
	}

	if(timer % 240 == 0 && !queuedBall) queuedBall = true; 
	if(queuedBall && global.serveReady && timer > 30){
		ballCount++;
		if(ballCount % 4 == 0)instance_create_depth(768, global.serveY, 0, obj_luckyBall);
		else instance_create_depth(768, global.serveY, 0, obj_ball);
		queuedBall = false;
	}
	lastLevel = global.level;
	global.level = floor(global.totalBounces/50);
	if(lastLevel != global.level && global.level > 0) message("LEVEL " + string(global.level) + "!");
	global.universalSpeed = 1+((global.level-1)*0.1);
	if(global.universalSpeed > 2.5) global.universalSpeed = 2.5;

	if(score != lastScore){
		if(score > 100 && lastScore < 100) message("100 POINTS!");
		if(score > 1000 && lastScore < 1000) message("1000 POINTS!");
		if(score > 10000 && lastScore < 10000) message("10000 POINTS!");
		if(score > 100000 && lastScore < 100000) message("100000 POINTS!");
		if(score > 1000000 && lastScore < 1000000) message("1 MILLION POINTS! NICE!");
		if(score > 10000000 && lastScore < 10000000) message("10 MILLION POINTS! GREAT!");
		if(score > 100000000 && lastScore < 100000000) message("100 MILLION POINTS! CRAZY!");
		if(score > 500000000 && lastScore < 500000000) message("500 MILLION POINTS! FANTASTIC!");
		if(score > 1000000000 && lastScore < 1000000000) message("1 BILLION POINTS! INSANE!");
		if(score > 10000000000 && lastScore < 10000000000) message("10 BILLION POINTS! UNBELIEVABLE!");
		if(score > 100000000000 && lastScore < 100000000000) message("100 BILLION POINTS! GODLIKE!");
		if(score > 1000000000000 && lastScore < 1000000000000) message("1 TRILLION POINTS! CHEATER!");
	}

	lastScore = score;

	global.serveReady = true;
}