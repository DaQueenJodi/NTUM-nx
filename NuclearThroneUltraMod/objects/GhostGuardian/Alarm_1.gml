alarm[1] = 10+random(10)
scrTarget()
if target > 0
{
	//GOT TARGET
	if point_distance(x,y,target.x,target.y) < 320
	{
		//CAN SEE
		direction = point_direction(x,y,target.x,target.y)+random(60)-30
	}
	else
	{
		//CANT SEE
		direction = random(360)
	}
	if (xSpd > 0)
		right = 1;
	else
		right = -1;
}
