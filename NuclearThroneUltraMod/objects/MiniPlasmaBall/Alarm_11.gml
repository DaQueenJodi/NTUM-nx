/// @description ultramod
if GetPlayerUltramod() == ultramods.bulletMiniPlasma
{
	snd_play_fire(sndMachinegun);
	with instance_create(x,y,Bullet1)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}