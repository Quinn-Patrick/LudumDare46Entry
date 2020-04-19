/// @description Insert description here
// You can write your code in this editor
if ds_map_find_value(async_load, "id") == get
{
	if ds_map_find_value(async_load, "status") == 0
	{
		r_str = ds_map_find_value(async_load, "result");
		loaded = true;
		
		map = json_decode(r_str);
		
		hintCreator = ds_map_find_value(map, "name");
		hint = ds_map_find_value(map, "content");
	}
	else
	{
		r_str = "null";
	}
}