x -= hspeed
y -= vspeed

if speed > 2
{
x += lengthdir_x(3,image_angle)
y += lengthdir_y(3,image_angle)
}
if walled = 0
{
with instance_create(other.x+8,other.y+8,MeleeHitWall)
image_angle = point_direction(other.x,other.y,x,y)
walled = 1
snd_play(snd_wallhit,random_range(0.98,1.02),true,true,1,false);
}


