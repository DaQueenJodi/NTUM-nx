/// @description Stay in same place
if instance_exists(owner)
{
	x = owner.x;
	y = owner.y;
}
else
	instance_destroy();
