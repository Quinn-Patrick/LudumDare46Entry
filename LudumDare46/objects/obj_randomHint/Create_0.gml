/// @description Insert description here
// You can write your code in this editor
get = http_get(string(global.url)  + "/score/randomhint");
loaded = false;
hint = "";
hintCreator = "";
processed = "";
cur = "";