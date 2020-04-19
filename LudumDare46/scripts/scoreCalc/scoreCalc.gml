ballMultiplier = argument0;
obj_scoreboard.chain += 1;
obj_scoreboard.chainDrop = 0;
return floor(ballMultiplier * sqr(global.level+1) * ((floor(sqr(obj_scoreboard.chain/5))+1)*sqr(instance_number(obj_ball))));