event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,acc)
}

if speed > maxSpeed
speed = maxSpeed;


if alarm[2] > 0 
{
	scrTarget();
	if target > 0
	{
		var dir = point_direction(x,y,target.x,target.y) - laserOffset;
		gunangle = dir;
		if alarm[2] < laserDuration - tellTime
		{
			laserOffset -= angleStep;	
		}
		with myLaser {
			x = x;
			y = y;
			image_angle = dir;
		}
		
		if target.x < x
			right = -1
        else if target.x > x
			right = 1
	}
	else
	{
		with myLaser
		{
			event_perform(ev_alarm,0);	
		}
	}
}
