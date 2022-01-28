if ammo > 0
{
if ammo= 10
snd_play(sndBigBanditShootLaugh)


shot = 1
ammo -= 1
alarm[2] = 3
sprite_index = spr_fire
walk = 0
motion_add(gunangle+180,1)
wkick = 5
snd_play(sndEnemyFire)
if instance_exists(Player)
{
if Player.loops>0
{
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.gunangle+random(30)-15,7.5)
image_angle = direction
team = other.team
}
}
else
{//PRELOOP
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.gunangle+random(30)-15,6.5)
image_angle = direction
team = other.team
}
}
}
else
{//PRELOOP
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.gunangle+random(30)-15,6.5)
image_angle = direction
team = other.team
}
}

}
else
{

snd_play(sndBigBanditStopShoot)
sprite_index = spr_idle
if instance_exists(Player)
{
    if Player.loops>0{
    alarm[1] = 10+random(20)}
    else{
    alarm[1] = 40+random(20)}
}
else{
alarm[1] = 40+random(20)}
}

