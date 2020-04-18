/// @description Insert description here
// You can write your code in this editor
vVelo += global.gravity;

x += hVelo;
y += vVelo;

event_user(0);

if(collision_rectangle(obj_paddle.x, obj_paddle.y, obj_paddle.x + obj_paddle.width, obj_paddle.y+16, self, false, false) && vVelo > 0){
	vVelo *= -1;
	y = obj_paddle.y - sprite_height -1;
	score += scoreCalc(self.scoreMultiplier);
}