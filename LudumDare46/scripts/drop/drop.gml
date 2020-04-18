if(obj_scoreboard.chainDrop == 0)obj_scoreboard.chainDrop = obj_scoreboard.chain;
else obj_scoreboard.chainDrop *= 1.5;

obj_scoreboard.chainDrop = round(obj_scoreboard.chainDrop);

if(obj_scoreboard.chainDrop < 10) obj_scoreboard.chainDrop = 10;

obj_scoreboard.chain -= obj_scoreboard.chainDrop*0.2;

safe = false;
if(obj_scoreboard.chain < 1) safe = true;

obj_scoreboard.chain = round(obj_scoreboard.chain);

if(safe && obj_scoreboard.chain >= 0) obj_scoreboard.chain = 1;