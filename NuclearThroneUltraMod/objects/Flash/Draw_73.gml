/// @description Flash
var l = camera_get_view_x(view_camera[0])-1;
var r = l + camera_get_view_width(view_camera[0])+2;
var t = camera_get_view_y(view_camera[0])-1;
var b = t + camera_get_view_height(view_camera[0])+2;
draw_set_colour(colour);
draw_set_alpha(alpha);
draw_rectangle(l,t,r,b,false);
draw_set_alpha(1);