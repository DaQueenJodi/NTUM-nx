/// @description VAN
with instance_create(x,y,VanFanVan)
{
	team = other.team;
	image_angle = other.image_angle;
	if other.isSlow
		motion_add(image_angle,VanFan.vanSpeed * 0.5);
	else
		motion_add(image_angle,VanFan.vanSpeed);
	if hspeed < 0
		image_yscale = -1;
}
instance_destroy();