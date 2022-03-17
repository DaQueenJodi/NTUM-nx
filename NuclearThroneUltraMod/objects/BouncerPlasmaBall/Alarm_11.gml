/// @description ultramod
var um =GetPlayerUltramod();
if um == ultramods.plasmaRocket
{
	snd_play_fire(sndRocket)
	with instance_create(x,y,BouncerRocket)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.boltPlasma
{
	snd_play_fire(sndCrossbow)
	with instance_create(x,y,Bolt)
	{
		direction = other.direction;
		image_angle = direction;
		speed = 18+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.plasmaRocket
{
	snd_play_fire(sndRocket)
	with instance_create(x,y,Rocket)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}