if alarm[0]<1
motion_add(direction,0.8);


if speed > 2
speed = 2

if alarm[1] > 8&& alarm[1]<30
{
with instance_create(x+random(96)-48,y+random(96)-48,LaserCharge)
{
motion_add(point_direction(x,y,other.x,other.y),2+random(1))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}
repeat(4)   {
with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
{
move_contact_solid(other.gunangle,random(480))
motion_add(random(360),1+random(1))
alarm[0] = 2+random(4)
}           }
}

