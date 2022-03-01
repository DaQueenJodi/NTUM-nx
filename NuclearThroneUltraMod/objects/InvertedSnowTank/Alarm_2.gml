if ammo > 0
{
if ammo = 32
snd_play(sndSnowTankPreShoot);
snd_play(sndSnowTankShoot,0.01,true);
if random(2)<1
{
with instance_create(x,y,EnemyBullet5)
{motion_add(other.gunangle+sin(other.wave)*30,13)
team = other.team
image_angle = direction}
with instance_create(x,y,EnemyBullet5)
{motion_add(other.gunangle-sin(other.wave)*30,13)
team = other.team
image_angle = direction}
}
else
{
with instance_create(x,y,EnemyBullet4)
{motion_add(other.gunangle+sin(other.wave)*30,13)
team = other.team
image_angle = direction}
with instance_create(x,y,EnemyBullet4)
{motion_add(other.gunangle-sin(other.wave)*30,13)
team = other.team
image_angle = direction}
}
alarm[2] = 1
wave += 0.05
ammo -= 1
}
else
{
snd_play(sndSnowTankCooldown);
rest = 1
alarm[1] = 4/0.4
sprite_index = spr_idle
image_index = 0
}

