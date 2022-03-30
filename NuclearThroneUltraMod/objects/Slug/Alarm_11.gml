/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.slugFatBullet
{
	instance_destroy(id,false);
	with instance_create(x,y,FatBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.boltSlug
{
	snd_play_fire(sndCrossbow);
	instance_destroy(id,false);
	with instance_create(x,y,Bolt)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}