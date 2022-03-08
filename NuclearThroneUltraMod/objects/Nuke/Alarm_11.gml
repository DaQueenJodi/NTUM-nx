/// @description ultramod
if GetPlayerUltramod() == ultramods.heavyBoltNuke
{
	instance_destroy(id,false);
	with instance_create(x,y,HeavyBolt)
	{
		motion_add(other.image_angle,24+other.speed)
		image_angle = direction
		team = other.team
		alarm[11] = 0;
	}
}