/// @description ultramod
var um =GetPlayerUltramod();
if um == ultramods.bladeGrenade
{
	snd_play_fire(sndGrenade);
	with instance_create(x,y,Grenade)
	{
		scrCopyWeaponMod(other);
		canExplodeBlade = true;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}