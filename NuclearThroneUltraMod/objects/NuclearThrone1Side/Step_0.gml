/// @description Check if I die so disable me
if my_health <= 0
{
	disable = true;
	if spr_idle == sprNothingLeft
	{
		spr_idle = sprNothingLeftDeactivated;
		spr_hurt = sprNothingLeftDeactivatedHurt;
	}
	else
	{
		spr_idle = sprNothingRightDeactivated;
		spr_hurt = sprNothingRightDeactivatedHurt;
	}
}
if owner > -1 && instance_exists(owner)
{
	x = owner.x + xOffset;
	y = owner.y;
}