
var hit = collision_line_point(x,y,x,y+10000,Wall,false,false)
if hit[0] != noone{
	xEnd = hit[1];
	yEnd = hit[2];
}
image_yscale = (yEnd - y)/sprite_height
/*
var dir;
dir = 0
do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 12) or place_meeting(x,y,Wall) or dir > 160//160

alarm[0] = 2//8 //2 the preventing of getting stuck in walls!?

image_xscale = point_distance(x,y,xstart,ystart)*0.5
instance_create(x,y,Smoke)
//optimise  sleep(30);//the preventing of getting stuck in walls!?
*/