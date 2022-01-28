if instance_exists(Player)
{
if Player.race=24
{
if Player.ultra_got[61]//viking coldheart
{
if speed>3.2&&instance_exists(enemy)
motion_add(point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y),0.12);
}
}

}

