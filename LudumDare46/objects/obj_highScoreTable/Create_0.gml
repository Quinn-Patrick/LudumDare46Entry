/// @description Insert description here
// You can write your code in this editor
get = http_get(string(global.url)  + "/score/topten");
loaded = false;
global.scoreList = ds_list_create();
processed = "";
cur = "";