/// @description Animation transitions
if hidden
{
	debug("NO LONGER HIDDEN");
	hidden = false;
	spr_idle = spr_normal;
	sprite_index = spr_idle;
	mask_index = spr_idle;
}
else
{
	if (sprite_index == spr_fire)
	{
		sprite_index = spr_idle;
	}
}