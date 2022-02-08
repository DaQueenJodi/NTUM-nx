event_inherited()

if speed < 2 && sprite_index != spr_fire
	speed = 2;
else if jumpUp || jumpDown
{
	direction = jumpDir;
	if target > 0
		motion_add(point_direction(x,y,target.x,target.y),0.3);
	speed =	8;
}
else if speed > 2
	speed = 2



if jumpUp
{
	sprite_index = spr_jump_up;	
}
else if jumpDown
{
	sprite_index = spr_jump_down;	
}
if hspeed > 0
	right = 1;
else
	right = -1;