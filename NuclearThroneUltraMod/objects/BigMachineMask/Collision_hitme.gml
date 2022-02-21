/// @description collision
with other{
	var dir = point_direction(other.x,other.y,x,y)
	motion_add(dir,10)
}

