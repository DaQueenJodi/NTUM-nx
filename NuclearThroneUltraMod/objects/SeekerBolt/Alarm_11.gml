/// @description ultramod
if GetPlayerUltramod() == ultramods.seekerMissile
{
	instance_destroy(id,false);
	with instance_create(x,y,Missile)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}