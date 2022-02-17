//PRE LOOP
alarm[1] = 6+random(4)

scrTarget()
run = 0;
if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		
		var pdir =  point_direction(x,y,target.x,target.y);
		motion_add(pdir,0.8)
		var dis = point_distance(target.x,target.y,x,y);
		var ran = random(100);
		if dis > 64 && dis < 128 && ran > 50
		{
			direction = pdir+random(180)-90
			gunangle = pdir
			ammo = maxAmmo;
			alarm[2] = 2;
			alarm[1] += 2;
		}
		else if ran > 20
		{
			run = 1.5;
			direction = pdir+random(20)-10
			motion_add(direction,2);
		}
		else
		{
			motion_add(random(360),2);
		}
	}
	else 
	{
		run = 0;
		if random(10)<1
		{
		motion_add(point_direction(x,y,target.x,target.y),0.4)
		mp_potential_step(target.x,target.y,0.8,false)
		}
		else if random(4)<1
		{
		motion_add(random(360),0.4)
		}
	
	}
}
else if random(10) < 1
{
motion_add(random(360),0.4)
}