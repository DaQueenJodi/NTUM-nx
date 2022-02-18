/// @description Anim handle
if sprite_index == spr_hurt
{
	if isLeft
	{
		if disable
			spr_hurt = sprNothingLeftDeactivatedHurt;
		else
			spr_hurt = sprNothingLeftHurt;
	}
	else
	{
		if disable
			spr_hurt = sprNothingRightDeactivatedHurt;
		else
			spr_hurt = sprNothingRightHurt;	
	}
	sprite_index = spr_idle;	
}