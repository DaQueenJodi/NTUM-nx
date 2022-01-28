if ammo > 0
{
snd_play(sndScorpionFire)
ammo -= 1
alarm[2] = 2
sprite_index = spr_fire
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+random(12)-6-20,5+random(2))
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+random(12)-6+20,5+random(2))
image_angle = direction
team = other.team
}
}
else
{
sprite_index = spr_idle
alarm[1] = 40+random(10)
}

