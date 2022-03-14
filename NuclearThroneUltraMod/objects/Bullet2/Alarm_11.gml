/// @description Change to bullet
var um = GetPlayerUltramod();
if um == ultramods.bulletPellet
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
} else if um == ultramods.splinterPellet
{
	with instance_create(x,y,Splinter)
	{
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}

