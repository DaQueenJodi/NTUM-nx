/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.boltPlasma
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,PlasmaBall)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.boltRocket
{
	snd_play_fire(sndRocket);
	with instance_create(x,y,Rocket)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.boltLaser
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)
	}
	with instance_create(x,y,Laser)
	{
		scrCopyWeaponMod(other);
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
} else if um == ultramods.boltSlug
{
	snd_play_fire(sndSlugger);
	instance_destroy(id,false);
	with instance_create(x,y,Slug)
	{
		scrCopyWeaponMod(other);
		friction = 0.2;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}