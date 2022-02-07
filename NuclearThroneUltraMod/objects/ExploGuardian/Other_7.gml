/// @description xxx
if (sprite_index == spr_fire)
{
	fire = false;
	charge = false;
	sprite_index = spr_normal;
	spr_idle = spr_normal;
	spr_hurt = spr_normal_hurt;
	alarm[1] += 3;
	motion_add(direction,2);
}