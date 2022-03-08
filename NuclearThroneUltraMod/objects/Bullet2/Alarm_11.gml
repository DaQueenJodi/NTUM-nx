/// @description Change to bullet
if GetPlayerUltramod() == ultramods.bulletPellet
{
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