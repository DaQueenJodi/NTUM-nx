

snd_play(sndExplosionL)
ang = random(360)
with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(16,ang),SmallExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(16,ang),SmallExplosion)
scrCanHumphry();
with instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(16,ang+180),SmallExplosion)
scrCanHumphry();


instance_create(x,y,Explosion);


