with instance_create(x,y,EnemyBullet1)
{
motion_add(other.direction,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.direction+20,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.direction-20,4)
image_angle = direction
team = other.team
}

