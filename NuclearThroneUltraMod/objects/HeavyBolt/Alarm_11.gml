/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.heavyBoltNuke
{
	instance_destroy(id,false);
	with instance_create(x,y,Nuke)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} if um == ultramods.heavyBoltMegaLaser
{
	snd_play_fire(sndMegaLaser)
	with instance_create(x,y,MegaLaser)
	{
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
	instance_destroy(id,false);
}