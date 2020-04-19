/// @description Insert description here
// You can write your code in this editor
vVelo += (global.gravity*128*global.universalSpeed);
vVeloTrue = vVelo*global.universalSpeed;

subX += hVelo;
subY += vVeloTrue;

x = round(subX/128);
y = round(subY/128);

event_user(0);

image_angle += rotation;

//if(vTarget == 0) vTarget = global.gravity*sqrt(abs((2*(obj_paddle.y-originalHeight))/global.gravity));

if(collision_rectangle(obj_paddle.x, obj_paddle.y, obj_paddle.x + obj_paddle.width, obj_paddle.y+16, self, false, false) && vVelo > 0){
	audio_play_sound(sfx_ricochet, 1, false);
	global.totalBounces++;
	vVelo = -1619.086162
	subY = (obj_paddle.y - sprite_height -1)*128;
	score += scoreCalc(self.scoreMultiplier);
}

event_user(1);