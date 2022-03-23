/// @description Go through a wall
if alarm[4] > 0 || alarm[7] > 0
{
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
}
else
	move_bounce_solid(true)