alarm[1] = 4+random(5)
scrTarget()
if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if random(4)<1//shift dodgy movement
		{
			move_contact_solid(direction+choose(90,-90),1+irandom(3))
		}
		
		if point_distance(target.x,target.y,x,y) < 80 && alarm[5] < 1 {//SMACK THAT
			alarm[2]=18
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
			instance_create(x-5,y,Notice);
			alarm[1]=25;
		}
		else
		{
			motion_add(point_direction(target.x,target.y,x,y)+random(20)-10,4);
			walk = 30+random(10)
			gunangle = point_direction(x,y,target.x,target.y)
		}

		if target.x < x
		right = -1
		else if target.x > x
		right = 1
	}
	else if point_distance(target.x,target.y,x,y) < 70 && alarm[5] < 1
	{//SMACK THAT ANYWAYS WE CAN GO THROUGH WALLS FK THAT SHIT
		alarm[2]=26//the delay that everyone wants its longer here cause you wont expect this
		instance_create(x,y,Notice);
		instance_create(x+5,y,Notice);
		instance_create(x-5,y,Notice);
		alarm[1]=30;
	}
	else if random(4) < 1
	{
		motion_add(random(360),0.4)
		walk = 5+random(10)
		alarm[1] = walk+random(7)
		gunangle = direction

		if hspeed > 0
		right = 1
		else if hspeed < 0
		right = -1
	}
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = 20+random(10)
	alarm[1] = walk+10+random(30)
	gunangle = direction
	
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
}

