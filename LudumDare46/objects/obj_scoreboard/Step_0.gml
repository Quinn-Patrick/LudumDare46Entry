/// @description Insert description here
// You can write your code in this editor
if(chain = 3) saved = 1;
if(chain == 1) started = true;
if(started && (chain == 0 || instance_number(obj_ball) == 0) && !dead)
{	
	audio_stop_sound(sng_astralSpheresWav);
	dead = true;
	timer = 0;
	

	for(i = 0; i < 40; i++){
		instance_create_depth(irandom_range(obj_paddle.x, obj_paddle.x+obj_paddle.width), 544, 0, obj_shard);
	}
	obj_paddle.width = 0;
}
if(lastChain != chain && chain % 10 == 0 && chain > 0) message(string(chain) + " CHAIN!");
if(lastChain != chain && chain % 50 == 0 && chain > 0){
	storedLongPaddle = true;
	message("CLICK TO ACTIVATE LONG PADDLE!");
}
if(lastChain == 1 && chain == 2 && saved) message("NICE SAVE!");

lastChain = chain;

if(chain < 0) chain = 0;

timer++;



if(timer > 240 && dead){
	room_goto(scores);
}
score = floor(score);