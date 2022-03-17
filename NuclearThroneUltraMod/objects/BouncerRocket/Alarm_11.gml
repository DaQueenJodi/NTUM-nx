/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.plasmaRocket
{
	with Player
	{
		if skill_got[17] = 1
			snd_play_fire(sndPlasmaBigUpg)
		else
			snd_play_fire(sndPlasmaBig)
	}
	with instance_create(x,y,BouncerPlasmaBall)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.grenadeRocket
{
	audio_stop_sound(sndRocket);
	snd_play_fire(sndGrenade);
	with instance_create(x,y,Grenade)
	{
		direction = other.direction;
		image_angle = direction;
		speed = 10 + other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.boltRocket
{
	audio_stop_sound(sndRocket);
	snd_play_fire(sndCrossbow)
	with instance_create(x,y,Bolt)
	{
		direction = other.direction;
		image_angle = direction;
		speed = 24+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}