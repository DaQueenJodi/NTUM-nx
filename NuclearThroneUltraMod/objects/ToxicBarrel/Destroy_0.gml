if existTime > 15
{
instance_create(x,y,Explosion)
instance_create(x,y+6,Scorchmark)
event_inherited()

repeat(25)
instance_create(x,y,ToxicGas)

snd_play(sndExplosion)
snd_play(sndToxicBarrelGas)
}

