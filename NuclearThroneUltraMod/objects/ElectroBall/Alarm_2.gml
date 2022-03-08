/// @description ultramod
if GetPlayerUltramod() == ultramods.splinterElectro
{
	instance_destroy(id,false);
	snd_play_fire(sndSplinterGun)
	with instance_create(x,y,Splinter)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 16;
		team = other.team;
		alarm[11] = 0;
	}
}