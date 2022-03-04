/// @description p6
snd_play(sndExplosion);
instance_create(x-step,y+(step*2),SmallExplosion);
instance_create(x+step,y+(step*2),SmallExplosion);
instance_create(x,y+(step*3),SmallExplosion);
instance_destroy();