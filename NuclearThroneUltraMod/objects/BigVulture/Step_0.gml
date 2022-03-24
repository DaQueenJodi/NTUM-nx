event_inherited()
if sprite_index = spr_hurt
{
	alarm[2] = 0;
	alarm[3] = 0;
	corpseTarget = -1;
}
else if alarm[2] > 0
	sprite_index = spr_eat;
if shooting < 1
{
	if ammo > 0
	{
		ammo --;
		alarm[1] += fireRate;
		shooting = fireRate;
		snd_play(sndSnowTankShoot);
		with instance_create(x,y,EnemyBullet5)
		{
			motion_add(other.gunangle,other.projectileSpeed)
			team = other.team
			image_angle = direction
		}
		event_user(2);
	}
} else if shooting > 0
{
	shooting --;
}
if alarm[4] > 0
{
	instance_create(x,y,WallBreak);
	instance_create(x+random(8)-4,y+4+random(4),Dust)
	motion_add(direction,0.5);
	motion_add(chargeDirection,2.1);
	if speed > 12
		speed = 12;
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
		
	image_angle = direction;
}
else if alarm[7] < 1 //Charge tell??
{
	if walk > 0
	{
		walk -= 1
		motion_add(direction,0.8)
	}

	if speed > 3
	speed = 3

	if corpseTarget > -1 && instance_exists(corpseTarget) && alarm[2] < 1
	{
		if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
		{
			walk = 0;
			speed = 0;
			alarm[1] += 15;
			sprite_index = spr_eat;
			if alarm[2] < 1
				image_index = 0;
				
			alarm[2] = 15;
			alarm[3] = 1;
		}
	}
}