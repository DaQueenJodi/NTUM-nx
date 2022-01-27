if random(8) < 1
{
snd_play(sndExplosion)
instance_create(x+random(24)-12,y+random(24)-12,Explosion)
}

if random(8) < 1
{
snd_play(sndExplosion)
instance_create(x+random(24)-12,y+random(24)-12,SmallExplosion)
}

