if ammo > 0
{
snd_play(sndEnemyFire)
wkick = 5
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle+random(30)-15,3.2)
image_angle = direction
team = other.team
}
ammo -= 1
alarm[2] = 3
}

