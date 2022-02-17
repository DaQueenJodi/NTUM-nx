/// @description Track the throne
if owner > 0 && instance_exists(owner)
{
	x = owner.x+xOffset;
	y = owner.y+yOffset;
}
else
	sprite_index = sprThroneFlameEnd;