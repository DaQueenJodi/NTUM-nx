/// @description spinattack
//snd_play(sndDragonStop)
snd_play(sndStatueHurt);
mask_index=mskChesireCat;

ammo-=1;
ang = random(360)
repeat(9)
{
with instance_create(xprevious,yprevious,EnemyBullet1)
{motion_add(other.ang,0.8+random(3))
image_angle = direction
team = other.team}
ang += 360/9
}

repeat(20)
{
with instance_create(xprevious,yprevious,EnemyBullet1)
{motion_add(other.ang,3+random(4))
image_angle = direction
team = other.team}
ang += 360/6+random(6)
}
if ammo>0
alarm[4]=7;

