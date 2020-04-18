/// @description Insert description here
// You can write your code in this editor
draw_text(32,32, "Score: ");
draw_text(256-string_width(string(score)), 32, string(score));
draw_text(32,48, "Chain: ");
draw_text(256-string_width(string(chain)), 48, string(chain));