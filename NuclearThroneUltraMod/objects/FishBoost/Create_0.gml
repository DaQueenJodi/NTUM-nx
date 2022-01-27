image_angle = random(360)
motion_add(random(360),random(3))
friction = 0.3
image_speed = 0.3+random(0.2)

with enemy
{
if point_distance(x,y,other.x,other.y) < 96
motion_add(point_direction(other.x,other.y,x,y),((96-point_distance(x,y,other.x,other.y))/96)*max(1,4-size))
}

