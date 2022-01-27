if sticky = 1
{

snd_play(sndExplosionL)

with instance_create(x,y,Explosion)
scrCanHumphry();

with instance_create(x+32,y,Explosion)
scrCanHumphry();
with instance_create(x+64,y,Explosion)
scrCanHumphry();
/*with instance_create(x+8,y+6,SmallExplosion)
with instance_create(x+8,y-6,SmallExplosion)
with instance_create(x+24,y+6,SmallExplosion)
with instance_create(x+24,y-6,SmallExplosion)*/

with instance_create(x-32,y,Explosion)
scrCanHumphry();
with instance_create(x-64,y,Explosion)
scrCanHumphry();
/*with instance_create(x-8,y+6,SmallExplosion)
with instance_create(x-8,y-6,SmallExplosion)
with instance_create(x-24,y+6,SmallExplosion)
with instance_create(x-24,y-6,SmallExplosion)*/

with instance_create(x,y+32,Explosion)
scrCanHumphry();
with instance_create(x,y+64,Explosion)
scrCanHumphry();
/*with instance_create(x+6,y+8,SmallExplosion)
with instance_create(x-6,y+8,SmallExplosion)
with instance_create(x+6,y+24,SmallExplosion)
with instance_create(x-6,y+24,SmallExplosion)*/

with instance_create(x,y-32,Explosion)
scrCanHumphry();
with instance_create(x,y-64,Explosion)
scrCanHumphry();
/*with instance_create(x+6,y-8,SmallExplosion)
with instance_create(x-6,y-8,SmallExplosion)
with instance_create(x+6,y-24,SmallExplosion)
with instance_create(x-6,y-24,SmallExplosion)*/

/*ang = random(360)
with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(8,ang),SmallExplosion)
with instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(8,ang+120),SmallExplosion)
with instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(8,ang+240),SmallExplosion)

with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(18,ang),Explosion)
with instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(18,ang+120),Explosion)
with instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(18,ang+240),Explosion)*/
}
else
{
snd_play(sndExplosion)
with instance_create(x,y,Explosion)
scrCanHumphry();
}

/* */
/*  */
