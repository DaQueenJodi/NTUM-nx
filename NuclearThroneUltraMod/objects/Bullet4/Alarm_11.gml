/// @description Change to ultra pellet or ultra splinter
var um = GetPlayerUltramod()
if um == ultramods.bulletPellet
{
	with instance_create(x,y,Bullet5)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}  else if um == ultramods.splinterBullet
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,UltraSplinter)
	{
		isog = false;
		image_angle = other.direction;
		team = other.team
		event_perform(ev_alarm,0);
	}
}