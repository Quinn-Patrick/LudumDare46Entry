/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_bin);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
body = textSequence[section];
draw_text_ext_colour(x, y, body, 16, 256, c_white, c_white, c_white, c_white, alpha);
//draw_text(100, 100, string(section) + ", " + string(dispPhase) + ",  " + string(timer));
//draw_text(100,100,"I'm here! x: " + string(x) + ", y: " + string(y));