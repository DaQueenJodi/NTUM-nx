if ammo > 0
{
if ammo = 16
snd_play(sndSnowTankPreShoot);
snd_play(sndSnowTankShoot,0.01,true);
var proj = EnemyBullet4

if (isLoop && ammo % 2 == 0)
	proj = EnemyBullet1Square;
with instance_create(x,y,proj)
{motion_add(other.gunangle+sin(other.wave)*20,12)
team = other.team
image_angle = direction}
with instance_create(x,y,proj)
{motion_add(other.gunangle-sin(other.wave)*20,12)
team = other.team
image_angle = direction}
alarm[2] = 2
wave += 0.1
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

