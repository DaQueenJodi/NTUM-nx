event_inherited()

if speed < 1.5 && !fire
	speed = 1.5;
else if jumpUp || jumpDown
{
	motion_add(jumpDir,6);
	if target > 0
		motion_add(point_direction(x,y,target.x,target.y),0.1);
	speed =	7;
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