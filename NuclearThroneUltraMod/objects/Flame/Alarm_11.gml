/// @description ultramod
if GetPlayerUltramod() == ultramods.toxicFire
{
	with instance_create(x,y,ToxicThrowerGas)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}