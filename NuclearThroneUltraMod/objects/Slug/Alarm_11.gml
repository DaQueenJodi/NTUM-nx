/// @description ultramod
var um = GetPlayerUltramod()/*
if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	with instance_create(x,y,HeavyBullet)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else */if um == ultramods.shotgunBolt
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