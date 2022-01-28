with creator
{
motion_add(point_direction(x,y,mouse_x,mouse_y),1);

motion_add(direction,other.Speed);
with RocketSlash
{
x=other.x;
y=other.y;
image_angle=other.direction;
dmg+=0.02;
}
instance_create(x,y,Smoke);
if other.Speed>6
instance_create(x,y,Smoke);
if other.Speed>8
instance_create(x,y,Smoke);

if speed>14//cap
speed=14;
}


BackCont.shake += 0.3

Speed+=0.4;

