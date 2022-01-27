//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 7 {
if random(2)<1
{
audio_stop_sound(sndVanPortal)
audio_sound_pitch(sndVanPortal,random_range(1.4,4))
audio_play_sound(sndVanPortal,100,0)
}
else
{
audio_stop_sound(sndVanWarning)
audio_sound_pitch(sndVanWarning,random_range(1.4,4))
audio_play_sound(sndVanWarning,100,0)
}
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



