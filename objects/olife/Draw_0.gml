/// @description Insert description here
// You can write your code in this editor

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
draw_set_color(c_red);
draw_text(cx + (cw / 6), cy + 80, string("Health"));
draw_text(cx + (cw / 6), cy + 120, string(oplayer.life));

draw_healthbar(oplayer.x-20, oplayer.y-35, oplayer.x+20, oplayer.y-20, (oplayer.life/100) * 100, c_black, c_red, c_lime, 0, true, true);

var spriteWidth = sprite_get_width(sprhealth);
var spriteHeight = sprite_get_height(sprhealth);
var hpPercent = oplayer.life/100;
draw_sprite_part(sprhealth, 0, 0, 0, spriteWidth*hpPercent, spriteHeight, x, y+5);