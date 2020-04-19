raw = argument0;

parsed = "";
newScore = "";
currentlyReading = 0;
for(i = 0; i < string_length(raw); i++){
	if(cur == "]") return parsed;
	cur = string_char_at(raw, i);
	if(currentlyReading == 0){
		if(cur == "n") currentlyReading = 1;
	}
	if(currentlyReading == 1 && string_char_at(raw, i-2) == ":") currentlyReading = 2;
	if(currentlyReading == 2){
		if(cur != "\"") parsed = parsed + cur;
		else{
			parsed = parsed + "\n";
			currentlyReading = 3;
		}
	}
	if(currentlyReading == 3 && string_char_at(raw, i-1) == ":"){
		newScore = "";
		currentlyReading = 4;
	}
	if(currentlyReading == 4){
		if(cur != "}")
		{
			newScore = newScore + cur;
			
		}
		else{
			ds_list_add(global.scoreList, newScore);
			currentlyReading = 0;
		}
	}
}

return parsed;