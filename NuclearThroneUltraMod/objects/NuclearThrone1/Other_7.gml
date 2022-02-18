/// @description Transition phases
if (sprite_index == sprNothingSwitchOn)
{
	sprite_index = sprNothingOn;
	spr_idle = sprNothingOn;
	spr_hurt = sprNothingOn;
}
if (sprite_index == sprNothingActivate)
{
	sprite_index = sprNothingMiddle;
	spr_idle = sprNothingMiddle;
	spr_hurt = sprNothingMiddleHurt;
	mask_index = mskNothingMiddle;
	image_speed = 0.4;
	with leftSide
	{
		visible = true;
		meleedamage = 10;
		mask_index = mskNothingSide;
	}
	with rightSide
	{
		visible = true;
		meleedamage = 10;
		mask_index = mskNothingSide;
	}
	with ThroneFlame
	{
		sprite_index = sprThroneFlameStart;
		image_index = 0;
		visible = true;
		yOffset -= 26;
		if x > other.x
			xOffset += 11;
		else
			xOffset -= 10;
	}
	active = true;
	intro = false;
	immune = false;
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