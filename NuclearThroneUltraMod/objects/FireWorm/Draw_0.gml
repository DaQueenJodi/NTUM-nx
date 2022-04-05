/// @description DRAW
draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
if (alarm[2] > 0)
{
	var xx = x+(lox*right);
	var dir = laserDirection + laserOffsetMax;
	var hmaxRange = maxRange*0.5;
	lasx = xx;
	lasy = y;
	lasd = 0;
	do {lasd += 1 lasx += lengthdir_x(2,dir) lasy += lengthdir_y(2,dir)}
	until position_meeting(lasx,lasy,Wall) or lasd > hmaxRange
	draw_sprite_ext(sprLaserSight,-1,xx,y,point_distance(xx,y,lasx,lasy)*0.5+2,1,dir,c_white,1)
	
	var xx = x+(lox*right);
	var dir = laserDirection;
	lasx = xx;
	lasy = y;
	lasd = 0;
	do {lasd += 1 lasx += lengthdir_x(2,dir) lasy += lengthdir_y(2,dir)}
	until position_meeting(lasx,lasy,Wall) or lasd > hmaxRange
	draw_sprite_ext(sprLaserSight,-1,xx,y,point_distance(xx,y,lasx,lasy)*0.5+2,1,dir,c_white,1)
	
	var dir = laserDirection - laserOffsetMax;
	lasx = xx;
	lasy = y;
	lasd = 0;
	do {lasd += 1 lasx += lengthdir_x(2,dir) lasy += lengthdir_y(2,dir)}
	until position_meeting(lasx,lasy,Wall) or lasd > hmaxRange
	draw_sprite_ext(sprLaserSight,-1,xx,y,point_distance(xx,y,lasx,lasy)*0.5+2,1,dir,c_white,1)
}
