/// @description Fire bullet spawm blast but consistent pattern
snd_play(sndSuperSlugger)
	wkick = -6
	gunangle = point_direction(x,y,target.x,target.y)
	direction = point_direction(x,y,target.x,target.y)
	var d = gunangle;
	with instance_create(x,y,EnemyBullet1)
	{
		motion_add(d - 12,2)
		image_angle = direction
		team = other.team
	}with instance_create(x,y,EnemyBullet1)
	{
	motion_add(d + 12,2)
	image_angle = direction
	team = other.team
	}with instance_create(x,y,EnemyBullet1)
	{
	motion_add(d - 6,3.5)
	image_angle = direction
	team = other.team
	}
	with instance_create(x,y,EnemyBullet1)
	{
	motion_add(d + 6,3.5)
	image_angle = direction
	team = other.team
	}
	with instance_create(x,y,EnemyBullet1Square)
	{
	motion_add(d,4)
	image_angle = direction
	team = other.team
	}


	with instance_create(x,y,EnemyBullet1)
	{
	motion_add(d + 24,2)
	image_angle = direction
	team = other.team
	}with instance_create(x,y,EnemyBullet1)
	{
	motion_add(d - 24,2)
	image_angle = direction
	team = other.team
	}
