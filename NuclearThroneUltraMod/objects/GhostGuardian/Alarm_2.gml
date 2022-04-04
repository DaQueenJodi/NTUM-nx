/// @description Safety check
if instance_exists(Floor)
{
	var nearest = instance_nearest(x,y,Floor)
	if point_distance(x,y,nearest.x+16,nearest.y+16) > 64
		motion_add(point_direction(x,y,nearest.x+16,nearest.y+16),3);
}
alarm[2] = 4;
