scrTarget()
alarm[1] = 5+random(5)
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
direction = point_direction(x,y,target.x,target.y)+random(20)-10
else
motion_add(random(360),0.5)
}
else 
motion_add(random(360),0.5)

