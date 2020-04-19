/// @description Insert description here
// You can write your code in this editor

timer++;

if(timer>displayTime){ 
	dispPhase++;
	timer = 0;
}

if(dispPhase > 2){
	timer = 0;
	dispPhase = 0;
	section++;
	if(section > 5) room_goto(title);
}
if(dispPhase = 0) alpha = timer/displayTime;
else if(dispPhase = 2) alpha = 1-(timer/displayTime);
else if(dispPhase = 1) alpha = 1;
if(mouse_check_button_pressed(mb_left)) room_goto(title);