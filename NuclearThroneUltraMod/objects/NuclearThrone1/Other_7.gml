/// @description Transition phases
if (sprite_index == sprNothingSwitchOn)
{
	sprite_index = sprNothingOn;
	spr_idle = sprNothingOn;
	spr_hurt = sprNothingOn;
}
if (sprite_index == sprNothingActivate)
{
	image_index = image_number -1;
}
if active && ! intro{
	if sprite_index == spr_hurt
	{
		if disable
			spr_hurt = sprNothingMiddleDeactivatedHurt;
		else
			spr_hurt = sprNothingMiddleHurt;
		sprite_index = spr_idle;	
	}
}