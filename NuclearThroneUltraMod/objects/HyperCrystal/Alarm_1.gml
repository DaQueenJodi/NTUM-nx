///@description AI
alarm[1] = 30+random(10)
scrTarget()
if target > 0
{
	var dis = point_distance(x,y,target.x,target.y);
	if dis < 160 && alarm[2] < 1 && alarm[3] < 1
	{
		var ds = ds_list_size(myCrystals);
		var alive = 0;
		for (var i = 0; i < ds; i++) {
			if instance_exists(myCrystals[| i])
				alive++;
		}
		
		if alive < ammo && random(alive) < 0.5
		{
			//New crystals
			event_user(0);	
		}
		else if alarm[2] < 2 && random(2) < 1
		{
			//Explode
			event_user(1);
		}
		
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && random(3) < 1
			direction = point_direction(x,y,target.x,target.y);
	}
	else if dis < 64
	{
		if random(3) < 1
			direction = point_direction(x,y,target.x,target.y);
		else
			direction = choose(direction,point_direction(x,y,target.x,target.y)+90+random(180))
	}
	else if random(3) < 1
	{
		direction = random(360)
	}
	else
	{
		direction = point_direction(x,y,target.x,target.y);
	}
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	alarm[1] = 10+random(30)
}

