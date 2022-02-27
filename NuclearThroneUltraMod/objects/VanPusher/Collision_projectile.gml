/// @description Push the van
if team != other.team && image_speed <= 0{
	with other
	{
		speed *= 0.9;
		direction += angle_difference(other.image_angle,direction)*0.08
	}
	image_speed = 0.6;
}
