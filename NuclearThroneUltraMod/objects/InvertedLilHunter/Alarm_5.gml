repeat(6)
{
with instance_create(x,y,EnemyBouncerBullet)
    {
    motion_add(other.gunangle+random(60),2+random(3))
    image_angle = direction
    team = other.team
    }
}

