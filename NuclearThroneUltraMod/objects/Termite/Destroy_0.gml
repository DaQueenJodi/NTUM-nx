snd_play(sndTermiteDead,0.3,true);

repeat(3)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}

repeat(2+irandom(4))
{
instance_create(x,y,RavenFeather);
}

/*
snd_play(sndExplosionL)
ang = random(360)
with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(8,ang),SmallExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(8,ang+120),SmallExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(8,ang+240),SmallExplosion)
scrCanHumphry();


instance_create(x,y,Explosion);


/* */
/*  */
