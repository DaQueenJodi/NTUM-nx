/// @description Draw tell lines
draw_set_alpha(alpha)
var dx = x+lengthdir_x(600,image_angle);
var dy = y+lengthdir_y(600,image_angle);
var ox = lengthdir_x(24,image_angle+90);
var oy = lengthdir_y(24,image_angle+90);
draw_line_colour(x+ox,y+oy,dx+ox,dy+oy,
col1,col2);
var ox = lengthdir_x(24,image_angle-90);
var oy = lengthdir_y(24,image_angle-90);
draw_line_colour(x+ox,y+oy,dx+ox,dy+oy,
col1,col2);

var xx = x + lengthdir_x(64,image_angle);;
var yy = y + lengthdir_y(64,image_angle);;
var xxx = xx + lengthdir_x(64,image_angle);
var yyy = yy + lengthdir_y(64,image_angle);
repeat(6)
{
	// >>>>>>
	var ox = lengthdir_x(16,image_angle+90);
	var oy = lengthdir_y(16,image_angle+90);
	draw_line_colour(xx+ox,yy+oy,xxx,yyy,
	col1,col2);
	var ox = lengthdir_x(16,image_angle-90);
	var oy = lengthdir_y(16,image_angle-90);
	draw_line_colour(xx+ox,yy+oy,xxx,yyy,
	col1,col2);
	
	var xx = xxx + lengthdir_x(32,image_angle);
	var yy = yyy + lengthdir_y(32,image_angle);
	var xxx = xx + lengthdir_x(64,image_angle);
	var yyy = yy + lengthdir_y(64,image_angle);
}
draw_set_alpha(1);