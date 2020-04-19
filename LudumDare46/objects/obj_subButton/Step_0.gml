/// @description Insert description here
// You can write your code in this editor
if(mouse_x > x && mouse_x < x + 128 && mouse_y > y && mouse_y < y + 64) mouseHover = true;
else mouseHover = false;

postContents = ds_map_create();

ds_map_add(postContents, "name", obj_nameField.contents);
ds_map_add(postContents, "score", score);

postString = json_encode(postContents);