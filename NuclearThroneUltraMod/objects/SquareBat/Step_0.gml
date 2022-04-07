event_inherited()

if circleMode {
	
	if target > 0
	{
		var lerpp = lp;
		x += clamp(((target.x + lengthdir_x(circleDistance,angle))-x)*lerpp,-3,3);
		y += clamp(((target.y + lengthdir_y(circleDistance,angle))-y)*lerpp,-3,3);
		angle += rotationSpeed; 
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
	else
	{
		circleMode = false;	
	}
}
else
{
	
	if walk > 0
	{
		walk -= 1
		motion_add(direction,0.8)
		
	}
	
	if instance_exists(Floor) && !place_meeting(x,y,Floor) || place_meeting(x,y,Wall)
	{
		var nearest = instance_nearest(x,y,Floor);
		var dir = point_direction(x,y,nearest.x,nearest.y);
		motion_add(dir,0.8);
	}
}
if speed > 3
	speed = 3
