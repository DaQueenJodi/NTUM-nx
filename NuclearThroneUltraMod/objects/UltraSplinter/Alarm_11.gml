/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.splinterBullet
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet4)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.splinterPellet
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet5)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}