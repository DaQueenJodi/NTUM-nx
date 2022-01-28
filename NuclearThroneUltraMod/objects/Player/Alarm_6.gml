/// @description Outside level?
if !instance_exists(GenCont) && !instance_exists(LevCont) && instance_exists(Floor)
{
if point_distance(x,y,instance_nearest(x,y,Floor).x,instance_nearest(x,y,Floor).y)>200//outside level
{x=instance_nearest(x,y,Floor).x+16
y=instance_nearest(x,y,Floor).y+16}
}

alarm[6]=500;

