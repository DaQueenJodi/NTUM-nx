/// @description Spawn projectiles
var angle = -60;
scrTarget();
var dir = point_direction(x,y,target.x,target.y);
repeat(3)
{
	with instance_create(x,y,GuardianBullet)
	{
		motion_add(dir+angle+random_range(-20,20),0.7);
	}
	angle += 60;
}

instance_destroy();