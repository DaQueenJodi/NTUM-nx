/// @description VAN
with instance_create(x,y,VanCannonVan)
{
	team = other.team;
	image_angle = other.image_angle;
	motion_add(image_angle,18);
	if hspeed < 0
		image_yscale = -1;
}
instance_destroy();