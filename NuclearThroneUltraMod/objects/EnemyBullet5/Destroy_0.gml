instance_create(x,y,EBulletHit)
with instance_create(x,y,SmallExplosion)
{
team=other.team;
dmg=1;
}
if !audio_is_playing(sndExplosion)
snd_play(sndExplosion);

