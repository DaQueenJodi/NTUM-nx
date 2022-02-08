/// @description Stay in same place
if instance_exists(owner)
{
	x = owner.y;
	y = owner.y;
}
else
	instance_destroy();
