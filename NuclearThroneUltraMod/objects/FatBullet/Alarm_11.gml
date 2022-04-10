/// @description ultramod
var um = GetPlayerUltramod();/*
if um == ultramods.bulletShotgun
{
	instance_destroy(id,false);
	with instance_create(x,y,HeavySlug)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		friction = 0.2;
	}
} else */if um == ultramods.laserBullet
{
	snd_play_fire(sndMegaLaser);
	instance_destroy(id,false);
	with instance_create(x,y,MegaLaser)
	{
		scrCopyWeaponMod(other);
		isog = false;
		image_yscale -= 0.1;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
}
