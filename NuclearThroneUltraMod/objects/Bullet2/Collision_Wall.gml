//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6 {
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

move_bounce_solid(false)
speed *= 0.8
if speed+wallbounce > 18
speed = 18
else
speed += wallbounce
wallbounce *= 0.9
if random(2)<1
instance_create(x,y,Dust)

if instance_exists(Player)
{
if Player.skill_got[15] = 1
{
dmg=3;
alarm[1]=2;
}
}



