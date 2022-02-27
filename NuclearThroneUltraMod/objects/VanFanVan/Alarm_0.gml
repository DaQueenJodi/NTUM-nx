/// @description Check dis
alarm[0] = 2;
BackCont.shake += 2
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) > 300 && alarm[2] < 0
	{
		alarm[2] = 1;
	}
}
else
{
	instance_destroy();	
}