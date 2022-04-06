/// @description ultramod
var um = GetPlayerUltramod();
if ((object_index == Grenade) && um == ultramods.bladeGrenade)
{
	with instance_create(x,y,Blade)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}