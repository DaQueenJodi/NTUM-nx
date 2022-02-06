/// @description LETS GO HUMP DAT ASS
fire = false;
charge = true;
sprite_index = spr_jump_up;
spr_idle = spr_jump_up;
spr_walk = spr_jump_up;
image_index = 0;
jumpUp = true;
scrTarget()
if target > 0
{
	jumpDir = point_direction(x,y,target.x,target.y);
	motion_add(jumpDir,5);
}
else
{
	jumpDir = direction;
	motion_add(direction,5);
}
alarm[3] = 20;