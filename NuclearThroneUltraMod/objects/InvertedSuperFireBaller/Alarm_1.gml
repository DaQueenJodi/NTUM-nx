alarm[1] = 10+random(20)
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if random(5) < 4 && point_distance(x,y,target.x,target.y)<180
{
if random(2)<1
direction = point_direction(x,y,target.x,target.y)+180
repeat(2)
{
    with instance_create(x,y,EnemyBullet1)
    {
    motion_add(other.direction+180+random(12)-6,3)
    image_angle = direction
    team = other.team
    }with instance_create(x,y,EnemyBullet1)
    {
    motion_add(other.direction+180+random(12)-6,4)
    image_angle = direction
    team = other.team
    }with instance_create(x,y,EnemyBullet1)
    {
    motion_add(other.direction+180+random(12)-6,5)
    image_angle = direction
    team = other.team
    }
}
image_index = 0
sprite_index = spr_fire
alarm[1] = 6
}
else
direction = point_direction(x,y,target.x,target.y)+random(20)-10
}
else 
motion_add(random(360),1)
}
else 
motion_add(random(360),0.5)

