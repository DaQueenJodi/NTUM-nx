/// @description Charge finished
if (sprite_index == spr_charge || sprite_index == spr_charge_hurt)
{
	depth = -2;
	charge = false;
	image_index = 0;
	sprite_index = spr_normal;
	spr_idle = spr_normal;
	spr_walk = spr_normal;
	spr_hurt = spr_normal_hurt;
	motion_add(direction,1);
	alarm[1] = 7-min(loops*2,4);
	charge = false;
	motion_add(direction,2);
}