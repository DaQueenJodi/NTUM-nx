direction += random(6)-3

if home
{

if instance_exists(enemy)
{
var enem=instance_nearest(x,y,enemy)

motion_add(point_direction(x,y,enem.x,enem.y),0.4);

}


}

