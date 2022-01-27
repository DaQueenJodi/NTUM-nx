if ammo > 0
{
if ammo = 12
{
snd_play(sndSnowTankPreShoot)
with instance_create(x,y,JockRocket)
{
sprite_index=sprGoldenRocket;
motion_add(other.gunangle+random(20)-10,1)
image_angle = direction
team = other.team
}
}
snd_play(sndSnowTankShoot)
with instance_create(x,y,EnemyBullet4)
{motion_add(other.gunangle+sin(other.wave)*20,12)
team = other.team
image_angle = direction}
with instance_create(x,y,EnemyBullet4)
{motion_add(other.gunangle-sin(other.wave)*20,12)
team = other.team
image_angle = direction}
alarm[2] = 2
wave += 0.1
ammo -= 1
}
else
{
snd_play(sndSnowTankCooldown)
rest = 1
alarm[1] = 4/0.4
sprite_index = spr_idle
image_index = 0
}

