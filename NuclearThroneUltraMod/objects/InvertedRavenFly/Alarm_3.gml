alarm[3] = 5+random(10)
scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 32
{
if random(3) < 1
{
//FIRE
alarm[4] = 1
ammo = 5
gunangle = point_direction(x,y,target.x,target.y)
alarm[3] = 10+random(10)
}


}

}

}

