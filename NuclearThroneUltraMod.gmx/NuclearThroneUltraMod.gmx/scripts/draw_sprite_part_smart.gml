/// draw_sprite_part_smart(sprite, subimg, left, top, width, height, x, y, color, alpha)
var s = argument0;
var i = argument1;
var rx = argument2;
var ry = argument3;
var rw = argument4;
var rh = argument5;
var dx = argument6;
var dy = argument7;
var c = argument8;
var a = argument9;
//
var ox = rx - sprite_get_bbox_left(s);
if (ox < 0) { rx -= ox; dx -= ox; rw += ox; }
var oy = ry - sprite_get_bbox_top(s);
if (oy < 0) { ry -= oy; dy -= oy; rh += oy; }
rw = min(rw, sprite_get_bbox_right(s) + 1 - rx);
rh = min(rh, sprite_get_bbox_bottom(s) + 1 - ry);
//
if (rw <= 0 || rh <= 0) return false;
//
draw_sprite_part_ext(s, i, rx, ry, rw, rh, dx, dy, 1, 1, c, a);
return true;
