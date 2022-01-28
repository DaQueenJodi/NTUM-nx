Sleep(100)
repeat(32)
instance_create(x+random(32)-16,y+random(32)-16,Explosion)

repeat(20)
instance_create(x+random(32)-16,y+random(32)-16,SmallExplosion)
snd_play(sndExplosionXL)

instance_destroy()

