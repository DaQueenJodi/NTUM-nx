repeat(3)
instance_create(x+random(4)-2,y+random(4)-2,Explosion)

repeat(4)
instance_create(x+random(6)-3,y+random(6)-3,SmallExplosion)

instance_create(x,y+6,Scorchmark)
event_inherited()

snd_play(sndExplosionCar)

