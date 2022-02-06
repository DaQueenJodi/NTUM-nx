/// @description spinattack
//snd_play(sndDragonStop)
snd_play(sndStatueHurt);
mask_index=mskChesireCat;

ammo-=1;
ang = random(360)
var ogAng = ang;
var angStep = 360/10;
repeat(10)
{
with instance_create(xprevious,yprevious,EnemyBullet1Square)
{motion_add(other.ang,1)
image_angle = direction
team = other.team}
ang += angStep;
}
ang = ogAng + (angStep*0.5);
repeat(10)
{
with instance_create(xprevious,yprevious,EnemyBullet1Square)
{motion_add(other.ang,3)
image_angle = direction
team = other.team}
ang += angStep
}
angStep = 360/20;
repeat(20)
{
with instance_create(xprevious,yprevious,EnemyBullet1Square)
{motion_add(other.ang,6)
image_angle = direction
team = other.team}
ang +=angStep
}
if ammo>0
alarm[4]=7;

