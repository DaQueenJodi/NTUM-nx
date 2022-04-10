/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.toxicFire
{
	with instance_create(x,y,Flame)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.toxicSwarm
{
	with instance_create(x,y,SwarmBolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
