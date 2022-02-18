/// @description xxx
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
	debug("MAKE SIDES VISIBLE");
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
	active = true;
	immune = false;
}