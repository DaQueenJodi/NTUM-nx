event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}


scrRoguePopo();



if speed > 3
speed = 3

if instance_exists(Player)
{
if Player.speed > 0 or my_health < maxhealth
freeze += 1
if Player.can_shoot = 0
freeze += 3
}

if control = 1 && instance_exists(target)
{
with target
{if point_distance(x,y,other.x,other.y) < 240
{if place_free(x+lengthdir_x(1,point_direction(x,y,other.x,other.y)),y)
x += lengthdir_x(1,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(1,point_direction(x,y,other.x,other.y)))
y += lengthdir_y(1,point_direction(x,y,other.x,other.y))}}
}

