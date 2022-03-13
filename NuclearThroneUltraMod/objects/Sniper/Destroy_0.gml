scrDrop(40,0)
if existTime > 15
{
instance_create(x,y,Explosion);
snd_play(sndExplosion);
}
event_inherited()


