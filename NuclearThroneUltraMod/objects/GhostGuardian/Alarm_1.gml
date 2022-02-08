alarm[1] = 10+random(10)
scrTarget()
if target > 0
{
	//GOT TARGET
	var dis = point_distance(x,y,target.x,target.y);
	if dis < 180
	{
		//CAN SEE
		//direction = point_direction(x,y,target.x,target.y)+random(60)-30
		goForIt = true;
	}
	else
	{
		if (dis > 400)
		{
			direction = point_direction(x,y,target.x,target.y);
			speed = 3;
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
