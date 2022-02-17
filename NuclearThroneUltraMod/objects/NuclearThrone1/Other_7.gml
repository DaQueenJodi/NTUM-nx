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
	active = true;
	immune = false;
}