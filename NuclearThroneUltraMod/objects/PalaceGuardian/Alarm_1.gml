///AI
if instance_exists(Player) && !fire && sprite_index != spr_appear && sprite_index != spr_disappear
{

alarm[1] = 30+random(20);

scrTarget()
if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if point_distance(target.x,target.y,x,y) > 16
		{
			if random(2) < 1
			{
				fire = true;
				spr_idle = spr_fire;
				spr_walk = spr_fire;
				image_index = 0;
				gunangle = point_direction(x,y,target.x,target.y)
				with instance_create(x,y,GuardianBulletSpawn)
				{
					team = other.team
				}
				alarm[1] = 20;
			}
		}

		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
	else
	{
		if (random(2) < 1)
		{
			image_index = 0;
			sprite_index = spr_disappear;
			spr_idle = spr_disappear;
			spr_walk = spr_disappear;
			snd_play(snd_disappear);
		}
	}
}

}
else
{
alarm[1] = 20;
}