alarm[1] = 10+random(20)


scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 48
{
motion_add(point_direction(target.x,target.y,x,y)+random(60)-30,0.8);
walk=10+random(25);
}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 3
walk = 40+random(10)
//gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(4) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
//gunangle = direction
if hspeed > 0{
right = 1;
}
else if hspeed < 0{
right = -1;
}
}
}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
//gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

