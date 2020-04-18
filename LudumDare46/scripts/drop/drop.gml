if(obj_scoreboard.chainDrop == 0)obj_scoreboard.chainDrop = obj_scoreboard.chain;
else obj_scoreboard.chainDrop *= 1.5;


obj_scoreboard.chainDrop = round(obj_scoreboard.chainDrop);

obj_scoreboard.chain -= obj_scoreboard.chainDrop*0.1;

