if ( instance_exists(enemy) )
{
var nearestenemy=instance_nearest(x,y,enemy);
motion_add(point_direction(x,y,nearestenemy.x,nearestenemy.y),0.2);
}


image_angle=direction;

if instance_exists(Player)
{
    if Player.race=11
    {
    if speed>14.2
    {
    speed=14.2;
    }
    }
    else
    if speed>10
    speed=10;
}
else if speed>10
speed=10;

