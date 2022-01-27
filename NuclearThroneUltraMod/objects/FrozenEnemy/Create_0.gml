image_speed=0;
DebrisAmount=6;
if instance_exists(enemy)
{
with instance_nearest(x,y,enemy)
{
if alarm[2]>0&&random(4)<1
alarm[2]=2;
}
}

