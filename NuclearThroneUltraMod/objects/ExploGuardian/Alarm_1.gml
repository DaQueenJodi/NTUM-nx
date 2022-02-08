///AI
alarm[1] = 10+random(10)
if fire || charge
	exit;
motion_add(direction,1);
	scrTarget()
	if target > 0
	{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if point_distance(x,y,target.x,target.y) < 200 && random(2) < 1
		{
			speed *= 0.1;
			charge = true;
			sprite_index = spr_charge;
			spr_idle = spr_charge;
			spr_hurt = spr_charge_hurt;
			snd_play(sndExploGuardianCharge);
			image_index = 0;
			
			alarm[2] = 50;
			alarm[1] = 60;
			var loops = min(GetPlayerLoops(),3)
			alarm[2] -= 5*loops;
			alarm[1] -= 5*loops;
		}
		else
		{
			direction = point_direction(x,y,target.x,target.y)+random(80)-40;
			alarm[1] -= 6;
			speed = 2;
			}


	if target.x < x
	right = -1
	else if target.x > x
	right = 1
		motion_add(point_direction(x,y,target.x,target.y)+random(80)-40,1);
	}
	else if random(4) < 1
	{
		motion_add(random(360),1)
		if hspeed > 0
		right = 1
		else if hspeed < 0
		right = -1
	}
	}
	else if random(10) < 1
	{
	motion_add(random(360),2)
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
	}