/// @description Insert description here
// You can write your code in this editor
draw_self();
if(timer < 120 && floor(timer / 10)%2 == 0) draw_text_transformed(400,300,"READY",10,10,0);
//if(timer >= 120) draw_text_transformed(400,300,"GO!!",10,10,0);
if(timer > 120 && !obj_scoreboard.dead) y-=20;
if(y < -600) y = -600;
if(obj_scoreboard.dead && obj_scoreboard.timer > 150){
	y += 10;
	if(y > 0) y = 0;
}