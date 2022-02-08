event_inherited()

if target > 0
{
	//motion_add(point_direction(x,y,target.x,target.y),4);
	MoveDirection(point_direction(x,y,target.x,target.y),2);
}

CapSpeed(3);
x += xSpd+hspeed;
y += ySpd+vspeed;