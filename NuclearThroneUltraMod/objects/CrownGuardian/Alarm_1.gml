if spr_idle = sprGuardianActivate or sprite_index = spr_fire{
sprite_index = spr_idle
spr_idle = sprGuardianIdle}
canfire = 1
alarm[1] = 25

scrTarget()
if target > 0
{
//GOT TARGET
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
//CAN SEE
if random(3) < 2
{
//FIRE
direction = point_direction(x,y,target.x,target.y)+180
walk = 6
alarm[2] = 6
}
else
{
//DONT FIRE
if point_distance(x,y,target.x,target.y) < 64
direction = point_direction(x,y,target.x,target.y)+120*choose(1,-1)
else
direction = point_direction(x,y,target.x,target.y)+70*choose(1,-1)
walk = 10
}
}
else
{
//CAN'T SEE
direction = point_direction(x,y,target.x,target.y)+40*choose(1,-1)
walk = 14
}

if target.x < x
right = -1
else if target.x > x
right = 1
}

