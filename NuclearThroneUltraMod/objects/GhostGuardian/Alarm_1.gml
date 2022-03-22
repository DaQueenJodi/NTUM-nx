alarm[1] = 5+random(10)
scrTarget()
if target > 0
{
	//GOT TARGET
	var dis = point_distance(x,y,target.x,target.y);
	if dis < 200
	{
		//CAN SEE
		//direction = point_direction(x,y,target.x,target.y)+random(60)-30
		goForIt = true;
	}
	else
	{
		
		if (dis > 370)
		{
			direction = point_direction(x,y,target.x,target.y);
			speed = 3;
		}
		else if random(3) < 1 && instance_exists(Floor) && !place_meeting(x,y,Floor)
		{
			goForIt = false;
			var nearestFloor = instance_nearest(x,y,Floor)
			direction = point_direction(x,y,nearestFloor.x+16,nearestFloor.y+16);
			speed = 2;
			
		}	
		else
		{
			//CANT SEE
			direction = random(360)
			if goForIt
				speed *= 0.5;
			goForIt = false;
		}
	}
}
else
{
	direction = random(360);
	alarm[1] +=5;
}
